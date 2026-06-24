"""
test_utilities.py

Pytest unit tests for:
  - GenerateParquetViewFiles.py
  - UpdateMetadata.py

No real SQL Server connection is required. File I/O uses tmp_path fixtures.
openpyxl is mocked where the actual Excel file is not available.
"""

import importlib
import re
import sys
import textwrap
import types
from pathlib import Path
from unittest.mock import MagicMock, patch, PropertyMock

import pytest

# ---------------------------------------------------------------------------
# Helpers – import the modules under test without running their main() guards
# ---------------------------------------------------------------------------

def _import_generate():
    """Import GenerateParquetViewFiles without executing main()."""
    spec = importlib.util.spec_from_file_location(
        "GenerateParquetViewFiles",
        Path(__file__).parent / "GenerateParquetViewFiles.py",
    )
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


def _import_update_metadata():
    """Import UpdateMetadata with openpyxl already importable (it's in requirements)."""
    spec = importlib.util.spec_from_file_location(
        "UpdateMetadata",
        Path(__file__).parent / "UpdateMetadata.py",
    )
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


GEN = _import_generate()
UPD = _import_update_metadata()

# ---------------------------------------------------------------------------
# Shared DDL fixtures
# ---------------------------------------------------------------------------

FACT_DDL = textwrap.dedent("""\
    CREATE TABLE [RDS].[FactK12StudentEnrollments] (
        [FactK12StudentEnrollmentId] [int] IDENTITY(1,1) NOT NULL,
        [StudentCount] [int] NULL,
        [DimLeaId] [int] NULL,
        [DimK12SchoolId] [int] NULL,
        CONSTRAINT [PK_FactK12StudentEnrollments] PRIMARY KEY CLUSTERED ([FactK12StudentEnrollmentId] ASC),
        CONSTRAINT [FK_FactK12StudentEnrollments_DimLeas] FOREIGN KEY ([DimLeaId])
            REFERENCES [RDS].[DimLeas] ([DimLeaId]),
        CONSTRAINT [FK_FactK12StudentEnrollments_DimK12Schools] FOREIGN KEY ([DimK12SchoolId])
            REFERENCES [RDS].[DimK12Schools] ([DimK12SchoolId])
    )
""")

DIM_LEA_DDL = textwrap.dedent("""\
    CREATE TABLE [RDS].[DimLeas] (
        [DimLeaId] [int] IDENTITY(1,1) NOT NULL,
        [LeaOrganizationId] [nvarchar](100) NULL,
        [LeaOrganizationName] [nvarchar](200) NULL,
        CONSTRAINT [PK_DimLeas] PRIMARY KEY CLUSTERED ([DimLeaId] ASC)
    )
""")

DIM_SCHOOL_DDL = textwrap.dedent("""\
    CREATE TABLE [RDS].[DimK12Schools] (
        [DimK12SchoolId] [int] IDENTITY(1,1) NOT NULL,
        [SchoolName] [nvarchar](200) NULL,
        [SchoolCode] [varchar](20) NULL,
        CONSTRAINT [PK_DimK12Schools] PRIMARY KEY CLUSTERED ([DimK12SchoolId] ASC)
    )
""")

DIM_SIMPLE_DDL = textwrap.dedent("""\
    CREATE TABLE [RDS].[DimPeople] (
        [DimPersonId] [int] IDENTITY(1,1) NOT NULL,
        [FirstName] [nvarchar](100) NULL,
        [LastName] [nvarchar](100) NULL,
        [BirthDate] [date] NULL,
        CONSTRAINT [PK_DimPeople] PRIMARY KEY CLUSTERED ([DimPersonId] ASC)
    )
""")

# DDL with unbracketed type names (edge case)
UNBRACKETED_TYPE_DDL = textwrap.dedent("""\
    CREATE TABLE [RDS].[FactSomeTable] (
        [FactSomeTableId] int IDENTITY(1,1) NOT NULL,
        [SomeAmount] decimal(18,4) NULL,
        [SomeFlag] bit NULL,
        [DimPersonId] int NULL,
        CONSTRAINT [FK_FactSomeTable_DimPeople] FOREIGN KEY ([DimPersonId])
            REFERENCES [RDS].[DimPeople] ([DimPersonId])
    )
""")


# ===========================================================================
# Tests for GenerateParquetViewFiles.py
# ===========================================================================

class TestParseFkConstraints:
    """Tests for GEN.parse_fk_constraints()"""

    def test_single_fk_bracketed_types(self):
        result = GEN.parse_fk_constraints(FACT_DDL)
        assert "DimLeaId" in result
        assert result["DimLeaId"] == ("DimLeas", "DimLeaId")

    def test_multiple_fks(self):
        result = GEN.parse_fk_constraints(FACT_DDL)
        assert len(result) == 2
        assert result["DimK12SchoolId"] == ("DimK12Schools", "DimK12SchoolId")

    def test_no_fks(self):
        result = GEN.parse_fk_constraints(DIM_LEA_DDL)
        assert result == {}

    def test_unbracketed_type_names(self):
        """parse_fk_constraints is about CONSTRAINT blocks, not types — still works."""
        result = GEN.parse_fk_constraints(UNBRACKETED_TYPE_DDL)
        assert "DimPersonId" in result
        assert result["DimPersonId"] == ("DimPeople", "DimPersonId")

    def test_empty_string(self):
        assert GEN.parse_fk_constraints("") == {}

    def test_case_insensitive_keywords(self):
        ddl = textwrap.dedent("""\
            constraint [FK_Test_Dim] foreign key ([ColId])
                references [RDS].[DimFoo] ([DimFooId])
        """)
        result = GEN.parse_fk_constraints(ddl)
        assert "ColId" in result
        assert result["ColId"] == ("DimFoo", "DimFooId")


class TestParseColumns:
    """Tests for GEN.parse_columns()"""

    def test_returns_column_names(self):
        cols = GEN.parse_columns(DIM_LEA_DDL)
        assert cols == ["DimLeaId", "LeaOrganizationId", "LeaOrganizationName"]

    def test_pk_is_included_in_list(self):
        """parse_columns returns all columns; PK filtering is done elsewhere."""
        cols = GEN.parse_columns(FACT_DDL)
        assert "FactK12StudentEnrollmentId" in cols

    def test_handles_unbracketed_types(self):
        cols = GEN.parse_columns(UNBRACKETED_TYPE_DDL)
        assert "FactSomeTableId" in cols
        assert "SomeAmount" in cols
        assert "SomeFlag" in cols
        assert "DimPersonId" in cols

    def test_multiple_types(self):
        cols = GEN.parse_columns(DIM_SIMPLE_DDL)
        assert "FirstName" in cols
        assert "LastName" in cols
        assert "BirthDate" in cols

    def test_empty_ddl(self):
        assert GEN.parse_columns("") == []

    def test_ordering_preserved(self):
        cols = GEN.parse_columns(DIM_LEA_DDL)
        assert cols.index("DimLeaId") < cols.index("LeaOrganizationId")
        assert cols.index("LeaOrganizationId") < cols.index("LeaOrganizationName")


class TestGetPkColumn:
    """Tests for GEN.get_pk_column() — exercised implicitly via get_dim_non_pk_columns."""

    def test_identity_column_detected(self):
        cols = GEN.parse_columns(DIM_LEA_DDL)
        pk = GEN.get_pk_column(DIM_LEA_DDL, cols)
        assert pk == "DimLeaId"

    def test_identity_in_fact_table(self):
        cols = GEN.parse_columns(FACT_DDL)
        pk = GEN.get_pk_column(FACT_DDL, cols)
        assert pk == "FactK12StudentEnrollmentId"

    def test_fallback_to_first_column_when_no_identity(self):
        ddl = textwrap.dedent("""\
            CREATE TABLE [RDS].[NoIdentityTable] (
                [SomeId] [int] NOT NULL,
                [SomeValue] [nvarchar](100) NULL
            )
        """)
        cols = GEN.parse_columns(ddl)
        pk = GEN.get_pk_column(ddl, cols)
        assert pk == cols[0]

    def test_empty_columns_returns_none(self):
        pk = GEN.get_pk_column("", [])
        assert pk is None


class TestGetDimNonPkColumns:
    """Tests for GEN.get_dim_non_pk_columns() — uses tmp_path for file I/O."""

    def test_returns_non_pk_columns(self, tmp_path):
        (tmp_path / "DimLeas.sql").write_text(DIM_LEA_DDL, encoding="utf-8")
        result = GEN.get_dim_non_pk_columns("DimLeas", tmp_path)
        assert result == ["LeaOrganizationId", "LeaOrganizationName"]

    def test_pk_excluded(self, tmp_path):
        (tmp_path / "DimPeople.sql").write_text(DIM_SIMPLE_DDL, encoding="utf-8")
        result = GEN.get_dim_non_pk_columns("DimPeople", tmp_path)
        assert "DimPersonId" not in result

    def test_missing_file_returns_empty(self, tmp_path):
        result = GEN.get_dim_non_pk_columns("NonExistent", tmp_path)
        assert result == []

    def test_multiple_non_pk_columns(self, tmp_path):
        (tmp_path / "DimK12Schools.sql").write_text(DIM_SCHOOL_DDL, encoding="utf-8")
        result = GEN.get_dim_non_pk_columns("DimK12Schools", tmp_path)
        assert result == ["SchoolName", "SchoolCode"]


class TestGenerateViewSql:
    """Tests for GEN.generate_view_sql()"""

    def _write_source(self, tmp_path):
        """Write all DDL files needed for a self-contained test."""
        (tmp_path / "FactK12StudentEnrollments.sql").write_text(FACT_DDL, encoding="utf-8")
        (tmp_path / "DimLeas.sql").write_text(DIM_LEA_DDL, encoding="utf-8")
        (tmp_path / "DimK12Schools.sql").write_text(DIM_SCHOOL_DDL, encoding="utf-8")

    def test_create_or_alter_header(self, tmp_path):
        self._write_source(tmp_path)
        sql = GEN.generate_view_sql("FactK12StudentEnrollments", tmp_path)
        assert sql is not None
        assert sql.startswith("CREATE OR ALTER VIEW [RDS].[vwFactK12StudentEnrollmentsParquet] AS")

    def test_from_clause_uses_fact_alias(self, tmp_path):
        self._write_source(tmp_path)
        sql = GEN.generate_view_sql("FactK12StudentEnrollments", tmp_path)
        assert "FROM RDS.FactK12StudentEnrollments fact" in sql

    def test_pk_is_first_select(self, tmp_path):
        self._write_source(tmp_path)
        sql = GEN.generate_view_sql("FactK12StudentEnrollments", tmp_path)
        lines = sql.splitlines()
        select_line = next(l for l in lines if "SELECT" in l)
        assert "FactK12StudentEnrollmentId" in select_line

    def test_fk_columns_resolved_as_aliases(self, tmp_path):
        self._write_source(tmp_path)
        sql = GEN.generate_view_sql("FactK12StudentEnrollments", tmp_path)
        # DimLeaId FK → alias "DimLea", columns prefixed DimLea_
        assert "DimLea.LeaOrganizationId AS DimLea_LeaOrganizationId" in sql
        assert "DimLea.LeaOrganizationName AS DimLea_LeaOrganizationName" in sql

    def test_join_clauses_present(self, tmp_path):
        self._write_source(tmp_path)
        sql = GEN.generate_view_sql("FactK12StudentEnrollments", tmp_path)
        assert "JOIN RDS.DimLeas DimLea" in sql
        assert "ON fact.DimLeaId = DimLea.DimLeaId" in sql

    def test_non_fk_columns_use_fact_prefix(self, tmp_path):
        self._write_source(tmp_path)
        sql = GEN.generate_view_sql("FactK12StudentEnrollments", tmp_path)
        assert "fact.StudentCount" in sql

    def test_missing_file_returns_none(self, tmp_path):
        result = GEN.generate_view_sql("NoSuchTable", tmp_path)
        assert result is None

    def test_view_name_format(self, tmp_path):
        (tmp_path / "FactSomeTable.sql").write_text(UNBRACKETED_TYPE_DDL, encoding="utf-8")
        (tmp_path / "DimPeople.sql").write_text(DIM_SIMPLE_DDL, encoding="utf-8")
        sql = GEN.generate_view_sql("FactSomeTable", tmp_path)
        assert "[RDS].[vwFactSomeTableParquet]" in sql

    def test_output_ends_with_newline(self, tmp_path):
        """generate_view_sql returns LF-terminated text; write_text with newline='\\r\\n' produces CRLF on disk."""
        self._write_source(tmp_path)
        sql = GEN.generate_view_sql("FactK12StudentEnrollments", tmp_path)
        assert sql.endswith("\n")
        assert not sql.endswith("\r\n")


class TestShouldInclude:
    """Tests for GEN.should_include()"""

    # --- Exclusion cases ---

    def test_excluded_table_name(self):
        assert GEN.should_include("FactCustomCounts") is False

    def test_excluded_pattern_dtos(self):
        assert GEN.should_include("FactStudentDtos") is False

    def test_excluded_pattern_reports(self):
        assert GEN.should_include("FactReports") is False

    def test_excluded_pattern_toggle(self):
        assert GEN.should_include("ToggleSomeFeature") is False

    def test_excluded_pattern_report_case_insensitive(self):
        assert GEN.should_include("SomeReport") is False

    # --- Inclusion cases ---

    def test_fact_table_included(self):
        assert GEN.should_include("FactK12StudentEnrollments") is True

    def test_bridge_table_included(self):
        assert GEN.should_include("BridgeK12ProgramTypes") is True

    def test_dim_in_whitelist_included(self):
        assert GEN.should_include("DimLeas") is True

    def test_dim_people_current_included(self):
        assert GEN.should_include("DimPeople_Current") is True

    def test_dim_not_in_whitelist_excluded(self):
        assert GEN.should_include("DimSomeObscureTable") is False

    def test_random_table_excluded(self):
        assert GEN.should_include("SomeRandomTable") is False

    # --- Boundary ---

    def test_fact_custom_counts_specifically_excluded(self):
        """FactCustomCounts starts with Fact but is in EXCLUDED_TABLES."""
        assert GEN.should_include("FactCustomCounts") is False


# ===========================================================================
# Tests for UpdateMetadata.py
# ===========================================================================

class TestGetViewFiles:
    """Tests for UPD.get_view_files() — uses tmp_path to avoid needing real views dir."""

    def _make_views_dir(self, tmp_path):
        """Create a fake views directory with sample SQL files."""
        views = tmp_path / "views"
        views.mkdir()
        (views / "RDS.vwDimLeasParquet.sql").write_text("SELECT 1", encoding="utf-8")
        (views / "RDS.vwFactK12StudentEnrollmentsParquet.sql").write_text("SELECT 2", encoding="utf-8")
        (views / "RDS.vwDimPeopleParquet.sql").write_text("SELECT 3", encoding="utf-8")
        (views / "not_a_view.sql").write_text("noise", encoding="utf-8")
        return views

    def test_returns_stems_without_rds_prefix(self, tmp_path):
        views = self._make_views_dir(tmp_path)
        with patch.object(UPD, "VIEWS_DIR", views):
            result = UPD.get_view_files()
        assert "vwDimLeasParquet" in result
        assert "vwFactK12StudentEnrollmentsParquet" in result

    def test_non_vw_files_excluded(self, tmp_path):
        views = self._make_views_dir(tmp_path)
        with patch.object(UPD, "VIEWS_DIR", views):
            result = UPD.get_view_files()
        assert "not_a_view" not in result

    def test_results_are_sorted(self, tmp_path):
        views = self._make_views_dir(tmp_path)
        with patch.object(UPD, "VIEWS_DIR", views):
            result = UPD.get_view_files()
        assert result == sorted(result)

    def test_empty_directory_returns_empty_list(self, tmp_path):
        views = tmp_path / "empty_views"
        views.mkdir()
        with patch.object(UPD, "VIEWS_DIR", views):
            result = UPD.get_view_files()
        assert result == []


class TestParseViewColumns:
    """Tests for UPD.parse_view_columns()"""

    def _write_view(self, tmp_path, name, content):
        f = tmp_path / name
        f.write_text(content, encoding="utf-8")
        return f

    def test_as_aliases_extracted(self, tmp_path):
        sql = textwrap.dedent("""\
            CREATE OR ALTER VIEW [RDS].[vwFactK12StudentEnrollmentsParquet] AS
            \tSELECT fact.FactK12StudentEnrollmentId
            \t, DimLea.LeaOrganizationId AS DimLea_LeaOrganizationId
            \t, DimLea.LeaOrganizationName AS DimLea_LeaOrganizationName
            \t, fact.StudentCount
            FROM RDS.FactK12StudentEnrollments fact
            JOIN RDS.DimLeas DimLea
            \tON fact.DimLeaId = DimLea.DimLeaId
        """)
        f = self._write_view(tmp_path, "view.sql", sql)
        cols = UPD.parse_view_columns(f)
        assert "DimLea_LeaOrganizationId" in cols
        assert "DimLea_LeaOrganizationName" in cols

    def test_select_pk_inserted_at_front(self, tmp_path):
        sql = textwrap.dedent("""\
            CREATE OR ALTER VIEW [RDS].[vwFactK12StudentEnrollmentsParquet] AS
            \tSELECT fact.FactK12StudentEnrollmentId
            \t, DimLea.LeaOrganizationName AS DimLea_LeaOrganizationName
            FROM RDS.FactK12StudentEnrollments fact
        """)
        f = self._write_view(tmp_path, "view.sql", sql)
        cols = UPD.parse_view_columns(f)
        assert cols[0] == "FactK12StudentEnrollmentId"

    def test_empty_file_returns_empty_list(self, tmp_path):
        f = tmp_path / "empty.sql"
        f.write_text("", encoding="utf-8")
        cols = UPD.parse_view_columns(f)
        assert cols == []

    def test_view_with_no_as_clauses(self, tmp_path):
        sql = textwrap.dedent("""\
            CREATE OR ALTER VIEW [RDS].[vwDimLeasParquet] AS
            \tSELECT fact.DimLeaId
            FROM RDS.DimLeas fact
        """)
        f = self._write_view(tmp_path, "view.sql", sql)
        cols = UPD.parse_view_columns(f)
        # Only the SELECT pk should appear; no AS aliases
        assert "DimLeaId" in cols
        # Should not contain FROM or JOIN keywords as column names
        assert all("FROM" not in c and "JOIN" not in c for c in cols)

    def test_alias_trailing_comma_stripped(self, tmp_path):
        """Aliases with trailing commas should be cleaned up."""
        sql = textwrap.dedent("""\
            CREATE OR ALTER VIEW [RDS].[vwTest] AS
            \tSELECT fact.TestId
            \t, dim.SomeCol AS Dim_SomeCol,
            FROM RDS.TestTable fact
        """)
        f = self._write_view(tmp_path, "view.sql", sql)
        cols = UPD.parse_view_columns(f)
        assert "Dim_SomeCol" in cols
        assert "Dim_SomeCol," not in cols

    def test_case_insensitive_as_keyword(self, tmp_path):
        sql = textwrap.dedent("""\
            CREATE OR ALTER VIEW [RDS].[vwTest] AS
            \tSELECT fact.TestId
            \t, dim.Col1 as Dim_Col1
            \t, dim.Col2 AS Dim_Col2
            \t, dim.Col3 As Dim_Col3
            FROM RDS.TestTable fact
        """)
        f = self._write_view(tmp_path, "view.sql", sql)
        cols = UPD.parse_view_columns(f)
        assert "Dim_Col1" in cols
        assert "Dim_Col2" in cols
        assert "Dim_Col3" in cols

    def test_malformed_sql_no_crash(self, tmp_path):
        """Malformed SQL should not raise an exception."""
        sql = "this is not sql at all @@@ ###"
        f = self._write_view(tmp_path, "broken.sql", sql)
        try:
            cols = UPD.parse_view_columns(f)
            # May return empty or partial results — that's acceptable
            assert isinstance(cols, list)
        except Exception as exc:
            pytest.fail(f"parse_view_columns raised unexpectedly: {exc}")

    def test_multiple_select_lines_pk_at_front(self, tmp_path):
        """Any SELECT fact.XxxId match is inserted at position 0 (prepended).
        With a single SELECT line the PK lands at index 0; the AS aliases follow."""
        sql = textwrap.dedent("""\
            CREATE OR ALTER VIEW [RDS].[vwTest] AS
            \tSELECT fact.PrimaryKeyId
            \t, dim.Val AS Dim_Val
            FROM RDS.TestTable fact
        """)
        f = self._write_view(tmp_path, "view.sql", sql)
        cols = UPD.parse_view_columns(f)
        # PK prepended by insert(0, ...), AS alias appended after
        assert cols[0] == "PrimaryKeyId"
        assert "Dim_Val" in cols

    def test_large_view_performance(self, tmp_path):
        """Parse a view with 200 aliased columns without timing out."""
        lines = ["CREATE OR ALTER VIEW [RDS].[vwBig] AS", "\tSELECT fact.BigId"]
        for i in range(200):
            lines.append(f"\t, dim.Col{i} AS Dim_Col{i}")
        lines.append("FROM RDS.Big fact")
        sql = "\n".join(lines)
        f = self._write_view(tmp_path, "big.sql", sql)
        cols = UPD.parse_view_columns(f)
        assert len(cols) == 201  # 200 AS aliases + 1 pk


# ===========================================================================
# Integration-level smoke tests
# ===========================================================================

class TestGenerateViewSqlIntegration:
    """End-to-end: write DDLs, generate view SQL, verify structure."""

    def test_dim_table_view(self, tmp_path):
        """DimPeople has no FK columns — all should be fact.XxxCol lines."""
        (tmp_path / "DimPeople.sql").write_text(DIM_SIMPLE_DDL, encoding="utf-8")
        sql = GEN.generate_view_sql("DimPeople", tmp_path)
        assert sql is not None
        assert "CREATE OR ALTER VIEW [RDS].[vwDimPeopleParquet] AS" in sql
        assert "FROM RDS.DimPeople fact" in sql
        # Non-PK columns should appear as fact.XxxCol
        assert "fact.FirstName" in sql
        assert "fact.LastName" in sql
        assert "fact.BirthDate" in sql
        # PK should not appear as fact.DimPersonId non-SELECT line
        pk_select = [l for l in sql.splitlines() if "SELECT" in l]
        assert any("DimPersonId" in l for l in pk_select)

    def test_unbracketed_type_fact_table(self, tmp_path):
        (tmp_path / "FactSomeTable.sql").write_text(UNBRACKETED_TYPE_DDL, encoding="utf-8")
        (tmp_path / "DimPeople.sql").write_text(DIM_SIMPLE_DDL, encoding="utf-8")
        sql = GEN.generate_view_sql("FactSomeTable", tmp_path)
        assert sql is not None
        # FK resolved: DimPersonId → alias DimPerson (strip "Id")
        assert "DimPerson.FirstName AS DimPerson_FirstName" in sql
        assert "DimPerson.LastName AS DimPerson_LastName" in sql
        assert "JOIN RDS.DimPeople DimPerson" in sql
