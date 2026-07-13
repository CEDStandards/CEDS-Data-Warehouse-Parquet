"""
UpdateMetadata.py

Updates the CEDS-Data-Warehouse-Parquet-File-Metadata.xlsx spreadsheet by:
  1. Reading the current sheet to understand the existing schema
  2. Adding entries for any new v14 Parquet view files not already listed
  3. Updating the version header to 14.1.0.0

Run from the repo root:
    python "Python SQL DW to Parquet/UpdateMetadata.py"
"""

import re as _re
import shutil
import sys
import tempfile
from pathlib import Path

try:
    import openpyxl
except ImportError:
    print("ERROR: openpyxl is required. Run: pip install openpyxl", file=sys.stderr)
    sys.exit(1)

METADATA_FILE = Path(__file__).parent.parent / "docs" / \
    "CEDS-Data-Warehouse-Parquet-File-Metadata.xlsx"
VIEWS_DIR = Path(__file__).parent / "sql" / "data-warehouse-views"
CEDS_VERSION = "14.1.0.0"

_VERSION_PATTERN = _re.compile(r"^\d+\.\d+\.\d+\.\d+$")


def get_view_files() -> list:
    """Returns sorted list of view file stems (e.g. 'vwDimK12JobPositionStatusesParquet')."""
    return sorted(f.stem.replace("RDS.", "") for f in VIEWS_DIR.glob("RDS.vw*.sql"))


def parse_view_columns(view_file: Path) -> list:
    """Parses column names from a view SQL file (lines containing ' AS ')."""
    columns = []
    content = view_file.read_text(encoding="utf-8", errors="ignore")
    for line in content.splitlines():
        line = line.strip()
        if " AS " in line.upper():
            # e.g. ", Lea.LeaOrganizationName AS Lea_LeaOrganizationName"
            parts = _re.split(r"\s+AS\s+", line, maxsplit=1,
                              flags=_re.IGNORECASE)
            if len(parts) == 2:
                col_alias = parts[1].strip().rstrip(",")
                columns.append(col_alias)
        elif line.startswith("SELECT "):
            # Primary key column: "SELECT fact.XxxId"
            m = _re.search(r"SELECT\s+fact\.(\w+)", line, _re.IGNORECASE)
            if m:
                columns.insert(0, m.group(1))
    return columns


def main():
    if not METADATA_FILE.exists():
        print(f"Metadata file not found: {METADATA_FILE}", file=sys.stderr)
        sys.exit(1)

    wb = openpyxl.load_workbook(METADATA_FILE)

    if not VIEWS_DIR.exists():
        print(
            f"ERROR: Views directory not found: {VIEWS_DIR}", file=sys.stderr)
        sys.exit(1)
    ws = wb.active

    # Find the header row and locate the columns we know about. The sheet is
    # one row per (view, column) — headers: File Name | Column Name | Ordinal
    # Position | Allows Nulls? | Data Type | Max Length | Precision | Scale.
    # We only touch cells whose header we recognize, so no other data is at risk.
    header_row = None
    file_col = None       # 1-based column index of "File Name"
    colname_col = None    # 1-based column index of "Column Name"
    ordinal_col = None    # 1-based column index of "Ordinal Position"
    version_col = None    # 1-based column index of "Version"/"CEDS Version" if present

    for row_idx, row in enumerate(ws.iter_rows(min_row=1, max_row=10, values_only=True), start=1):
        for col_idx, cell in enumerate(row, start=1):
            if not cell:
                continue
            label = str(cell).strip().lower()
            if label in ("file name", "filename", "parquet file", "view") and file_col is None:
                header_row = row_idx
                file_col = col_idx
            elif label in ("column name", "columnname") and colname_col is None:
                colname_col = col_idx
            elif label in ("ordinal position", "ordinal") and ordinal_col is None:
                ordinal_col = col_idx
            elif label in ("version", "ceds version") and version_col is None:
                version_col = col_idx
        if header_row and file_col:
            break

    if file_col is None:
        file_col = 1
        header_row = 1

    # Collect existing view/file names in the sheet
    existing_views = set()
    for row in ws.iter_rows(min_row=header_row + 1, values_only=True):
        val = row[file_col - 1]
        if val:
            existing_views.add(str(val).strip())

    # Determine which view files are missing from the spreadsheet
    view_files = get_view_files()
    missing = [v for v in view_files if v not in existing_views and v.replace(
        "vw", "") not in existing_views]

    if not missing:
        print("No new views to add to the metadata spreadsheet.")
    else:
        print(f"Adding {len(missing)} new view(s) to metadata:")
        # Build a row aligned to the sheet's actual column layout. Type details
        # (Allows Nulls?, Data Type, Max Length, Precision, Scale) aren't derivable
        # from view SQL text — leave those cells blank rather than shifting values
        # into the wrong columns. For an authoritative refresh with real type
        # metadata, run "Generate Parquet File Spreadsheet.sql" against the live DB.
        total_cols = max(ws.max_column, file_col,
                         colname_col or 0, ordinal_col or 0)
        for view_name in missing:
            print(f"  + {view_name}")
            view_file = VIEWS_DIR / f"RDS.{view_name}.sql"
            columns = parse_view_columns(
                view_file) if view_file.exists() else []
            for ordinal, col_alias in enumerate(columns, start=1):
                row = [None] * total_cols
                row[file_col - 1] = view_name
                if colname_col:
                    row[colname_col - 1] = col_alias
                if ordinal_col:
                    row[ordinal_col - 1] = ordinal
                ws.append(row)

    # Only bump version cells if the sheet actually has a Version column;
    # otherwise a blanket rewrite could clobber unrelated dotted values
    # (e.g., ODBC driver versions, sample data, precision strings).
    if version_col is not None:
        for row in ws.iter_rows(min_row=header_row + 1):
            cell = row[version_col - 1]
            if cell.value is None:
                continue
            val = str(cell.value).strip()
            if val == CEDS_VERSION:
                continue
            if val in ("13.0.0.0", "v13", "Version 13") or _VERSION_PATTERN.match(val):
                cell.value = CEDS_VERSION
                print(
                    f"  Updated version cell {cell.coordinate}: {CEDS_VERSION}")
    else:
        print("(No 'Version' column found in header — skipping version-bump pass.)")

    backup = METADATA_FILE.with_suffix(".xlsx.bak")
    shutil.copy2(METADATA_FILE, backup)
    with tempfile.NamedTemporaryFile(
        dir=METADATA_FILE.parent, suffix=".tmp.xlsx", delete=False
    ) as tmp:
        tmp_path = Path(tmp.name)
    try:
        wb.save(tmp_path)
        tmp_path.replace(METADATA_FILE)
        backup.unlink(missing_ok=True)
    except Exception:
        tmp_path.unlink(missing_ok=True)
        raise
    print(f"\nSaved: {METADATA_FILE}")


if __name__ == "__main__":
    main()
