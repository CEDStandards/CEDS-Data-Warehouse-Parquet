![CEDS Data Warehouse Parquet Logo](/res/Data-Warehouse-Parquet-Logo-Full.png "CEDS Data Warehouse Parquet")

# CEDS Data Warehouse Parquet (DW Parquet)

**Current CEDS Version: 14.0.0.0**

Welcome to the CEDS Open Source Community!

The Common Education Data Standards (CEDS) Data Warehouse Parquet (DW Parquet) standard is designed for data engineering and data science needs in the cloud. The DW Parquet models mirror the SQL-based [CEDS Data Warehouse](https://github.com/CEDStandards/CEDS-Data-Warehouse) and are optimized for rapid, distributed reporting across technology stacks, BI tools, and cloud storage platforms. This standard is ideal for stakeholders implementing reporting structures in a data lake environment.

## Quick Start

### Prerequisites

- Python 3.9+
- SQL Server instance with the [CEDS Data Warehouse](https://github.com/CEDStandards/CEDS-Data-Warehouse) installed and populated (v14.0.0.0)
- Python dependencies: `pip install -r "Python SQL DW to Parquet/requirements.txt"`

### Configuration

Create `Python SQL DW to Parquet/connection.json` with your SQL Server credentials:

```json
{
  "driver": "{ODBC Driver 17 for SQL Server}",
  "server": "your-server-name",
  "database": "your-database-name",
  "uid": "your-username",
  "password": "your-password"
}
```

### Export Parquet Files

```bash
cd "Python SQL DW to Parquet"
python ExportAll.py
```

Parquet files are written to `Python SQL DW to Parquet/output/`.

### Deploy SQL Views to SQL Server

Before exporting, the Parquet views must exist in SQL Server. Two options:

**Option A – Run the generator (requires DB access):**
Execute `Python SQL DW to Parquet/Parquet View Generator.sql` against your CEDS Data Warehouse database. This auto-generates all views from the live schema.

**Option B – Deploy pre-built view scripts:**
Run the individual scripts in `Python SQL DW to Parquet/sql/data-warehouse-views/` against your CEDS Data Warehouse database. These scripts are generated from the v14 source DDL using `GenerateParquetViewFiles.py`.

### Regenerate View Scripts (after DW schema changes)

```bash
cd "Python SQL DW to Parquet"
python GenerateParquetViewFiles.py
```

This reads the source CEDS Data Warehouse DDL files and regenerates all `sql/data-warehouse-views/*.sql` scripts. See `GenerateParquetViewFiles.py --help` for options.

## File Structure

```
CEDS-Data-Warehouse-Parquet/
├── Python SQL DW to Parquet/
│   ├── ExportAll.py                      # Main export script
│   ├── CedsConnection.py                 # SQL Server connection
│   ├── DbTask.py                         # Parquet write utility
│   ├── GenerateParquetViewFiles.py       # View script generator (v14)
│   ├── Parquet View Generator.sql        # T-SQL dynamic view generator
│   ├── connection.json                   # DB credentials (not in source control)
│   ├── requirements.txt                  # Python dependencies
│   └── sql/
│       └── data-warehouse-views/         # 165 CREATE OR ALTER VIEW scripts
├── docs/
│   └── CEDS-Data-Warehouse-Parquet-File-Metadata.xlsx
├── output/                               # Generated .parquet files (gitignored)
└── res/                                  # Logo assets
```

## Parquet File Schema

Each Parquet file follows a denormalized star-schema pattern. Fact table foreign keys are resolved to their dimension table's descriptive columns using the naming convention:

```
[FK column name (without Id)]_[Dimension column name]
```

For example, `FactK12StudentEnrollments.EnrollmentEntryDateId` → `DimDates` produces:

| Column | Description |
|--------|-------------|
| `EnrollmentEntryDate_DateValue` | ISO date value |
| `EnrollmentEntryDate_Day` | Day of month |
| `EnrollmentEntryDate_Month` | Month number |
| `EnrollmentEntryDate_Year` | Year |
| `EnrollmentEntryDate_MonthName` | Month name |
| `EnrollmentEntryDate_SubmissionYear` | Submission year |

Full column documentation: [CEDS-Data-Warehouse-Parquet-File-Metadata.xlsx](/docs/CEDS-Data-Warehouse-Parquet-File-Metadata.xlsx)

## What's New in v14

- Added `DimK12JobPositionStatuses` dimension table and Parquet export view
- Added `DimStaffEvaluationScales` dimension table and Parquet export view
- `FactK12StaffAssignments` now includes `K12JobPositionStatus` denormalized columns
- Added `GenerateParquetViewFiles.py` — a standalone Python utility that regenerates all view scripts from source DDL without requiring a live SQL Server instance
- Fixed view script generation: all 165 view scripts are now complete and correctly formatted (`CREATE OR ALTER VIEW`)

## Submitting a Use Case

Use cases may be submitted through the [Issues](https://github.com/CEDStandards/CEDS-Data-Warehouse-Parquet/issues) tab by clicking **New Issue** → **Get Started** next to **CEDS Integrated Data Store and Data Warehouse Use Case**.

## Contributing

Please read [Contributing.md](/Contributing.md) for details on the process for submitting pull requests.

## Versioning

The CEDS open source community uses a customized version of Explicit Versioning. To keep the various CEDS open source projects in alignment with the CEDS Elements, the concept of "disruptive" releases has been replaced with "alignment" releases. These releases ensure that the data models are in sync with the official, CEDS community approved list of CEDS Elements. For the versions available, see the [tags on this repository](https://github.com/CEDStandards/CEDS-Data-Warehouse-Parquet/tags).

The DW Parquet version always mirrors the CEDS Data Warehouse version it was generated from:

| CEDS Elements | Data Warehouse | DW Parquet |
|---------------|----------------|------------|
| 14.0.0.0      | 14.0.0.0       | 14.0.0.0   |

## License

This project is licensed under the [Apache 2.0 License](/LICENSE) - see the LICENSE file for details.
