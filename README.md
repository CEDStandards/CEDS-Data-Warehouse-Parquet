![CEDS Data Warehouse Parquet Logo](/res/Data-Warehouse-Parquet-Logo-Full.png "CEDS Data Warehouse Parquet")

# CEDS Data Warehouse Parquet (DW Parquet)
Welcome to the CEDS Open Source Community!

The Common Education Data Standards (CEDS) Data Warehouse Parquet (DW Parquet) standard is designed for data engineering and data science needs in the cloud. The DW Parquet Models mirror the SQL-based CEDS Data Warehouse. Parquet files are designed for rapid and distributed reporting across multiple technology stacks, data processing and BI tools, and are cloud vendor agnostic.  This standard is ideal for stakeholders implementing reporting structures in a data lake environment. 

## Parquet File Format Standard
The CEDS Data Warehouse Parquet standard is based on the CEDS Data Warehouse data standard fact tables.  The file name standard mimics the Fact table names.  The fields within the files are derived from the table and column names in the Fact table.  Fields in the Fact table that links to a Dimension table are used as the prefix for the fields within the dimension.  For example, RDS.FactK12StudentEnrollments.EnrollmentStartDateId, which links to RDS.DimDates in the CEDS Data Warehouse, translates to the following fields in the Parquet standard:

* EnrollmentEntryDate_DateValue
* EnrollmentEntryDate_Day
* EnrollmentEntryDate_DayOfWeek
* EnrollmentEntryDate_DayOfYear
* EnrollmentEntryDate_Month
* EnrollmentEntryDate_MonthName
* EnrollmentEntryDate_SubmissionYear
* EnrollmentEntryDate_Year

Each of the CEDS Data Warehouse Parquet file standards is documented in [CEDS-Data-Warehouse-Parquet-File-Metadata.xlsx](/docs/CEDS-Data-Warehouse-Parquet-File-Metadata.xlsx)

## Submitting a Use Case
Use cases may be submitted through the [Issues](https://github.com/CEDStandards/CEDS-Data-Warehouse-Parquet/issues) tab by clicking on **New Issue** and then **Get Started** which is located next to **CEDS Integrated Data Store and Data Warehouse Use Case**.

## Contributing
Please read [Contributing.md](/Contributing.md) for details on the process for submitting pull requests.

## Versioning
The CEDS open source community uses a customized version of Explicit Versioning. To keep the various CEDS open source projects in alignment with the CEDS Elements, the concept of "disruptive" releases has been replaced with "alignment" releases. These releases ensure that the data models are in sync with the official, CEDS community approved list of CEDS Elements. For the versions available, see the tags on this repository.

Here is an example of how explicit versioning will occur.

Assuming an official release of CEDS has just occurred:

Data Warehouse (DW) version = 7.0.0.0
Data Warehouse Parquet (DW Parquet) version = 7.0.0.0
Integrated Data Store (IDS) version = 7.0.0.0
CEDS Elements = 7.0.0.0

Use Case:
Brand new elements are introduced to CEDS, because they are new, they represent no breaking change to any of the other CEDS elements:

CEDS Elements version = 7.0.1.0

These new elements, however, result in a new understanding of how data is integrated in the IDS resulting in a restructuring of the IDS which is not backwards compatible.

IDS version = 7.1.0.0

These elements are added to the DW structure and result in backwards compatibility, but a defect is identified in doing so that needs to be corrected.

DW version = 7.0.1.1

These elements are also added to the DW Parquet structure and result in backwards compatibility, but a defect is identified in doing so that needs to be corrected.  The CEDS DW and CEDS DW Parquet standards are updated simultaneously to maintain cross compatibility. 

DW Parquet version = 7.0.1.1

Throughout the remainder of the year, many changes occur in each of the different repositories. The changes prior to the annual release of CEDS results in the following:

DW version = 7.27.1.6
DW Parquet version = 7.27.1.6
IDS version = 7.3.2.0
CEDS Elements = 7.2.18.2

The annual official CEDS release occurs, typically around January/February of the calendar year. All resources are brought into version alignment (Note: no changes occurred to the resource, the annual release simply restarts/aligns the versioning):

DW version = 8.0.0.0
DW Parquet version = 8.0.0.0
IDS version = 8.0.0.0
CEDS Elements version = 8.0.0.0

Note: The CEDS Collaborative Exchange contains resources contributed by stakeholders. These resources should contain the compatible version they were created under.  The versions are not changed for a resource unless a stakeholder updates them to function under a newer version.

## License
This project is licensed under the [Apache 2.0 License](/LICENSE) - see the LICENSE file for details.

