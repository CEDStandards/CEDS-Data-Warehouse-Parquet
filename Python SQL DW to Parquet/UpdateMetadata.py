"""
UpdateMetadata.py

Updates the CEDS-Data-Warehouse-Parquet-File-Metadata.xlsx spreadsheet by:
  1. Reading the current sheet to understand the existing schema
  2. Adding entries for any new v14 Parquet view files not already listed
  3. Updating the version header to 14.0.0.0

Run from the repo root:
    python "Python SQL DW to Parquet/UpdateMetadata.py"
"""

import re
import sys
from pathlib import Path

try:
    import openpyxl
    from openpyxl.styles import Font, PatternFill, Alignment
    from openpyxl.utils import get_column_letter
except ImportError:
    print("ERROR: openpyxl is required. Run: pip install openpyxl", file=sys.stderr)
    sys.exit(1)

METADATA_FILE = Path(__file__).parent.parent / "docs" / "CEDS-Data-Warehouse-Parquet-File-Metadata.xlsx"
VIEWS_DIR = Path(__file__).parent / "sql" / "data-warehouse-views"
SOURCE_TABLES = Path(r"C:\Repos\CEDS-Data-Warehouse\src\CEDS-Data-Warehouse-Project\RDS\Tables")
CEDS_VERSION = "14.0.0.0"


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
            parts = re.split(r"\s+AS\s+", line, maxsplit=1, flags=re.IGNORECASE)
            if len(parts) == 2:
                col_alias = parts[1].strip().rstrip(",")
                columns.append(col_alias)
        elif line.startswith("SELECT ") or line.startswith("\tSELECT "):
            # Primary key column: "SELECT fact.XxxId"
            m = re.search(r"SELECT\s+fact\.(\w+)", line, re.IGNORECASE)
            if m:
                columns.insert(0, m.group(1))
    return columns


def main():
    if not METADATA_FILE.exists():
        print(f"Metadata file not found: {METADATA_FILE}", file=sys.stderr)
        sys.exit(1)

    wb = openpyxl.load_workbook(METADATA_FILE)
    ws = wb.active

    # Find the header row and existing view names in the spreadsheet
    header_row = None
    existing_views = set()
    file_col = None  # column index for "File Name" or similar

    for row_idx, row in enumerate(ws.iter_rows(min_row=1, max_row=10, values_only=True), start=1):
        for col_idx, cell in enumerate(row, start=1):
            if cell and str(cell).strip().lower() in ("file name", "filename", "parquet file", "view"):
                header_row = row_idx
                file_col = col_idx
                break
        if header_row:
            break

    if file_col is None:
        # Fallback: assume first column is file name
        file_col = 1
        header_row = 1

    # Collect existing view/file names in the sheet
    for row in ws.iter_rows(min_row=header_row + 1, values_only=True):
        val = row[file_col - 1]
        if val:
            existing_views.add(str(val).strip())

    # Determine which view files are missing from the spreadsheet
    view_files = get_view_files()
    missing = [v for v in view_files if v not in existing_views and v.replace("vw", "") not in existing_views]

    if not missing:
        print("No new views to add to the metadata spreadsheet.")
    else:
        print(f"Adding {len(missing)} new view(s) to metadata:")
        for view_name in missing:
            print(f"  + {view_name}")

            view_file = VIEWS_DIR / f"RDS.{view_name}.sql"
            columns = parse_view_columns(view_file) if view_file.exists() else []
            col_count = len(columns)

            # Append a row for the new view
            # Try to match the existing row structure (view name, column count, version)
            new_row = [view_name, col_count, CEDS_VERSION]
            ws.append(new_row)

    # Update any version cells that say 13 to 14
    for row in ws.iter_rows():
        for cell in row:
            if cell.value and str(cell.value).strip() in ("13.0.0.0", "v13", "Version 13"):
                cell.value = CEDS_VERSION
                print(f"  Updated version cell {cell.coordinate}: {CEDS_VERSION}")

    wb.save(METADATA_FILE)
    print(f"\nSaved: {METADATA_FILE}")


if __name__ == "__main__":
    main()
