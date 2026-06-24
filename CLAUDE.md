# CEDS Data Warehouse Parquet — Claude Code Context

## Project Overview

This repository is the **CEDS Data Warehouse Parquet (DW Parquet)** standard — a cloud-native, file-based representation of the [CEDS Data Warehouse](https://github.com/CEDStandards/CEDS-Data-Warehouse) SQL schema. It provides Parquet files for data lake, BI, and cloud-native education data consumers.

**Current version:** 14.1.0.0  
**Source DW:** `C:\Repos\CEDS-Data-Warehouse` (local clone)  
**Language:** Python 3.9+, T-SQL

## Repository Structure

```
Python SQL DW to Parquet/
  ExportAll.py                    # Main export entrypoint
  CedsConnection.py               # SQL Server connection (reads connection.json)
  DbTask.py                       # pandas → pyarrow → .parquet writer
  GenerateParquetViewFiles.py     # Regenerates sql/data-warehouse-views/ from source DDLs
  Parquet View Generator.sql      # T-SQL script to generate views in SQL Server
  requirements.txt
  sql/
    data-warehouse-views/         # 165 CREATE OR ALTER VIEW [RDS].[vwXxxParquet] scripts
```

## Key Architectural Points

- **Views first, export second.** The SQL views in `sql/data-warehouse-views/` define the denormalized schema each Parquet file will contain. The generator (`Parquet View Generator.sql` or `GenerateParquetViewFiles.py`) creates these from the source DW tables. The Python `ExportAll.py` then does `SELECT *` from each view to write the Parquet file.

- **Naming convention.** FK columns are resolved to their target dimension. `FactXxx.FooBarId` (FK to `DimFooBars`) produces columns prefixed `FooBar_*` (alias = FK column minus `Id`). This is the CEDS Parquet naming standard documented in `Contributing.md`.

- **`connection.json` is not committed.** Create it locally as:
  ```json
  { "driver": "{ODBC Driver 17 for SQL Server}", "server": "...", "database": "...", "uid": "...", "password": "..." }
  ```

- **`output/` is gitignored.** The generated `.parquet` files go there.

## Common Tasks

### Update to a new CEDS DW version
1. Pull the latest `C:\Repos\CEDS-Data-Warehouse` (or update the source path).
2. Run `python GenerateParquetViewFiles.py` from `Python SQL DW to Parquet/`.
3. If new tables were added, update `INCLUDED_DIM_TABLES` in `GenerateParquetViewFiles.py` and the Dim list in `Parquet View Generator.sql`.
4. Update the version in `README.md` and tag the release.

### Export Parquet files from SQL Server
```bash
cd "Python SQL DW to Parquet"
python ExportAll.py
```

### Regenerate all view SQL scripts
```bash
cd "Python SQL DW to Parquet"
python GenerateParquetViewFiles.py
# Optionally regenerate a single view:
python GenerateParquetViewFiles.py --table FactK12StudentEnrollments
```

### Run tests
```bash
cd "Python SQL DW to Parquet"
pytest
```

## Source Data Warehouse Location

Local clone: `C:\Repos\CEDS-Data-Warehouse`  
Table DDLs: `C:\Repos\CEDS-Data-Warehouse\src\CEDS-Data-Warehouse-Project\RDS\Tables\`

## Known Issues / Notes

- `SqlStatement.py` and the `Statements` enum in it are legacy code. The enum references SQL files that are no longer used (export now uses live DB views via `ExportAll.exportTablesWithoutParquetViews()`).
- `CedsConnection.py` resolves `connection.json` relative to its own file location (`Path(__file__).parent / "connection.json"`), so scripts can be run from any working directory.
- All views use `INNER JOIN` for FK relationships (matching the original `Parquet View Generator.sql` behavior). Rows where nullable FK columns are `-1` (the default sentinel) are included because the dimension tables contain a `-1` "MISSING" row.
