"""
GenerateParquetViewFiles.py

Generates CREATE OR ALTER VIEW SQL files for the CEDS Data Warehouse Parquet standard
by reading source table DDLs from the CEDS-Data-Warehouse repository.

Run this script whenever the CEDS Data Warehouse source tables change to regenerate
the SQL view files in sql/data-warehouse-views/.

Usage (from the 'Python SQL DW to Parquet' directory):
    python GenerateParquetViewFiles.py [--source <path>] [--output <path>] [--table <TableName>]

Default source: C:\\Repos\\CEDS-Data-Warehouse\\src\\CEDS-Data-Warehouse-Project\\RDS\\Tables
Default output: sql/data-warehouse-views
"""

import re
import os
import sys
import argparse
from pathlib import Path

DEFAULT_SOURCE = Path(r"C:\Repos\CEDS-Data-Warehouse\src\CEDS-Data-Warehouse-Project\RDS\Tables")

# ---------------------------------------------------------------------------
# Pre-compiled regex patterns (avoid recompiling inside per-table loops)
# ---------------------------------------------------------------------------
_RE_FK = re.compile(
    r"CONSTRAINT\s+\[[^\]]+\]\s+FOREIGN\s+KEY\s*\(\s*\[(\w+)\]\s*\)\s+"
    r"REFERENCES\s+\[RDS\]\.\[(\w+)\]\s*\(\s*\[(\w+)\]\s*\)",
    re.IGNORECASE,
)
_RE_COL = re.compile(
    r"^\s+\[(\w+)\]\s+"
    r"\[?(?:INT|BIGINT|NVARCHAR|VARCHAR|DECIMAL|NUMERIC|DATETIME2?|DATE|TIME|"
    r"BIT|FLOAT|REAL|MONEY|UNIQUEIDENTIFIER|SMALLINT|TINYINT|NCHAR|CHAR|"
    r"NTEXT|TEXT|VARBINARY|BINARY|IMAGE|XML|ROWVERSION|TIMESTAMP)\]?",
    re.IGNORECASE | re.MULTILINE,
)
_RE_PK = re.compile(r"^\s+\[(\w+)\]\s+\w+.*?IDENTITY", re.IGNORECASE | re.MULTILINE)
# DDL filenames don't always match the internal table name (e.g. FactCourseEndorsementRequirements.sql
# defines [RDS].[FactK12CourseEndorsementRequirements]); always derive the real name from CREATE TABLE.
_RE_TABLE_NAME = re.compile(r"CREATE\s+TABLE\s+\[RDS\]\.\[(\w+)\]", re.IGNORECASE)

# ---------------------------------------------------------------------------
# Module-level cache for dimension DDL column lookups
# ---------------------------------------------------------------------------
_dim_col_cache: dict = {}
DEFAULT_OUTPUT = Path(__file__).parent / "sql" / "data-warehouse-views"

# Tables included in the Parquet standard (mirrors Parquet View Generator.sql table list)
# All Fact% and Bridge% tables are included automatically via source scan.
# Additional Dim tables that are included as standalone Parquet exports:
INCLUDED_DIM_TABLES = {
    "DimAccessibilityFeatures",
    "DimAssessmentAdministrations",
    "DimAssessmentParticipationSessions",
    "DimAssessmentPerformanceLevels",
    "DimAssessments",
    "DimAssessmentSubtests",
    "DimCalendarCrises",
    "DimCalendarEventDays",
    "DimCalendarSessions",
    "DimCharterSchoolAuthorizers",
    "DimCharterSchoolManagementOrganizations",
    "DimCompetencyDefinitions",
    "DimContacts",
    "DimCredentialAwards",
    "DimCredentialDefinitions",
    "DimCredentialIssuers",
    "DimCredentials",
    "DimDataCollections",
    "DimEarlyLearningOrganizations",
    "DimEducationOrganizationNetworks",
    "DimEmployers",
    "DimFacilities",
    "DimFinancialAccounts",
    "DimIeus",
    "DimK12AcademicAwards",
    "DimK12CourseFundings",
    "DimK12Courses",
    "DimK12CourseSections",
    "DimK12JobPositions",
    "DimK12JobPositionStatuses",
    "DimK12Jobs",
    "DimK12Schools",
    "DimLeas",
    "DimLeaFinancialAccountBalances",
    "DimLeaFinancialAccountClassifications",
    "DimLeaFinancialExpenditureClassifications",
    "DimLeaFinancialRevenueClassifications",
    "DimLeaJobClassifications",
    "DimOrganizationAddresses",
    "DimOrganizationCalendarSessions",
    "DimOrganizations",
    "DimPeople",
    "DimPeople_Current",
    "DimPersonAddresses",
    "DimProfessionalDevelopmentActivities",
    "DimPsCourses",
    "DimPsInstitutions",
    "DimSeaFinancialAccountBalances",
    "DimSeaFinancialAccountClassifications",
    "DimSeaFinancialExpenditureClassifications",
    "DimSeaFinancialRevenueClassifications",
    "DimSeaJobClassifications",
    "DimSeas",
    "DimStaffEvaluationScales",
}

# Tables excluded from Parquet exports.
# Mirrors the upstream Parquet View Generator.sql filters:
#   table_name LIKE 'Toggle%'   table_name LIKE 'Report%'
#   table_name LIKE '%dtos'     table_name LIKE '%reports'
# Use prefix/suffix matches (not substring) — a plain "Report" substring would
# wrongly exclude legitimate tables like BridgeK12IncidentIncidentReporters.
EXCLUDED_TABLES = {"FactCustomCounts"}
EXCLUDED_PREFIXES = ("Toggle", "Report")
EXCLUDED_SUFFIXES = ("dtos", "reports")


def parse_fk_constraints(sql_content: str) -> dict:
    """Returns {fk_column: (target_table, target_pk)} from a CREATE TABLE DDL."""
    result = {}
    for m in _RE_FK.finditer(sql_content):
        fk_col, target_table, target_pk = m.groups()
        result[fk_col] = (target_table, target_pk)
    return result


def parse_columns(sql_content: str) -> list:
    """Returns ordered list of column names from a CREATE TABLE DDL.
    Handles both bracketed [int] and unbracketed int type names."""
    return [m.group(1) for m in _RE_COL.finditer(sql_content)]


def get_pk_column(sql_content: str, columns: list) -> str:
    """Returns the primary key column name (IDENTITY column)."""
    m = _RE_PK.search(sql_content)
    if m:
        return m.group(1)
    return columns[0] if columns else None


def get_dim_non_pk_columns(table_name: str, source_dir: Path) -> list:
    """Returns non-PK column names from a dimension table DDL.
    Results are cached by (table_name, source_dir) to avoid redundant file reads."""
    cache_key = (table_name, str(source_dir))
    if cache_key in _dim_col_cache:
        return _dim_col_cache[cache_key]
    sql_file = source_dir / f"{table_name}.sql"
    if not sql_file.exists():
        _dim_col_cache[cache_key] = []
        return []
    content = sql_file.read_text(encoding="utf-8", errors="ignore")
    cols = parse_columns(content)
    pk = get_pk_column(content, cols)
    result = [c for c in cols if c != pk]
    _dim_col_cache[cache_key] = result
    return result


def generate_view_sql(table_name: str, source_dir: Path) -> str:
    """Generates CREATE OR ALTER VIEW SQL for a given RDS table."""
    sql_file = source_dir / f"{table_name}.sql"
    if not sql_file.exists():
        return None

    content = sql_file.read_text(encoding="utf-8", errors="ignore")
    columns = parse_columns(content)
    if not columns:
        return None

    # The internal table name from CREATE TABLE is authoritative — DDL filenames
    # sometimes drift from it (K12/no-K12, singular/plural).
    m = _RE_TABLE_NAME.search(content)
    internal_name = m.group(1) if m else table_name

    fk_map = parse_fk_constraints(content)
    pk_col = get_pk_column(content, columns)
    view_name = f"vw{internal_name}Parquet"

    select_parts = []
    join_parts = [f"FROM RDS.{internal_name} fact"]

    for col in columns:
        if col == pk_col:
            continue  # pk is always first in SELECT, added below

        if col in fk_map:
            target_table, target_pk = fk_map[col]
            if col.lower().endswith("id"):
                alias = col[:-2]
            else:
                alias = col
                print(f"  WARN  FK column '{col}' in {table_name} does not end in 'Id'; using full name as alias", file=sys.stderr)
            dim_cols = get_dim_non_pk_columns(target_table, source_dir)

            for dc in dim_cols:
                select_parts.append(f"\t, {alias}.{dc} AS {alias}_{dc}")

            join_parts.append(f"JOIN RDS.{target_table} {alias}")
            join_parts.append(f"\tON fact.{col} = {alias}.{target_pk}")
        else:
            select_parts.append(f"\t, fact.{col}")

    lines = [
        f"CREATE OR ALTER VIEW [RDS].[{view_name}] AS",
        f"\tSELECT fact.{pk_col}",
    ]
    lines.extend(select_parts)
    lines.extend(join_parts)

    return "\n".join(lines) + "\n"


def should_include(table_name: str) -> bool:
    """Returns True if the table should have a Parquet view."""
    if table_name in EXCLUDED_TABLES:
        return False
    if table_name.startswith(EXCLUDED_PREFIXES):
        return False
    if table_name.lower().endswith(EXCLUDED_SUFFIXES):
        return False
    if table_name.startswith("Fact") or table_name.startswith("Bridge"):
        return True
    if table_name in INCLUDED_DIM_TABLES:
        return True
    return False


def get_tables_to_generate(source_dir: Path, only_table: str = None) -> list:
    """Returns list of table names to generate views for."""
    if only_table:
        return [only_table]

    tables = []
    for sql_file in source_dir.glob("*.sql"):
        name = sql_file.stem
        if should_include(name):
            tables.append(name)
    return sorted(tables)


def main():
    parser = argparse.ArgumentParser(description="Generate Parquet view SQL files from CEDS DW DDL")
    parser.add_argument("--source", default=str(DEFAULT_SOURCE), help="Path to RDS Tables DDL directory")
    parser.add_argument("--output", default=str(DEFAULT_OUTPUT), help="Output directory for view SQL files")
    parser.add_argument("--table", default=None, help="Generate view for a single table only")
    args = parser.parse_args()

    source_dir = Path(args.source)
    output_dir = Path(args.output)

    if not source_dir.exists():
        print(f"ERROR: Source directory not found: {source_dir}", file=sys.stderr)
        sys.exit(1)

    output_dir.mkdir(parents=True, exist_ok=True)

    tables = get_tables_to_generate(source_dir, args.table)
    print(f"Generating views for {len(tables)} tables...")

    generated = 0
    skipped = 0
    errors = []

    for table_name in tables:
        sql = generate_view_sql(table_name, source_dir)
        if sql is None:
            errors.append(f"  SKIP  {table_name} (DDL not found or no columns parsed)")
            skipped += 1
            continue

        # Recover the internal view name from the generated SQL so the output filename
        # matches the actual view created by SQL Server.
        m = re.search(r"CREATE\s+OR\s+ALTER\s+VIEW\s+\[RDS\]\.\[(\w+)\]", sql, re.IGNORECASE)
        view_name = m.group(1) if m else f"vw{table_name}Parquet"
        output_file = output_dir / f"RDS.{view_name}.sql"

        output_file.write_text(sql, encoding="utf-8", newline="\r\n")
        print(f"  OK    {output_file.name}")
        generated += 1

    print(f"\nDone: {generated} generated, {skipped} skipped")
    if errors:
        print("Skipped:")
        for e in errors:
            print(e)
        sys.exit(1)


if __name__ == "__main__":
    main()
