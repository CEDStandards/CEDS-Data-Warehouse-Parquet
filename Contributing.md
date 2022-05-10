Contributing
============

Contributions are welcome from the community. Questions can be asked on the
[CEDS Community of Practice website](https://ceds.communities.ed.gov/#program).

# Submitting Code Changes

If you have direct contributions you would like considered for incorporation
into the project you can [fork this repository](https://help.github.com/articles/fork-a-repo/) and
[submit a pull request](https://help.github.com/articles/about-pull-requests/) for review.  Along with your pull request, please
create a [use case ticket](https://github.com/CEDStandards/CEDS-Data-Warehouse-Parquet/issues/new?assignees=&labels=&template=ceds-integrated-data-store-and-data-warehouse-use-case.md&title=) that details the
parameters for your changes.

Changes to the CEDS Data Warehouse Parquet standard must originate from a change to the [CEDS Data Warehouse](https://github.com/CEDStandards/CEDS-Data-Warehouse).  Development guidelines for to the CEDS Data Warehouse schema can be found [here](https://github.com/CEDStandards/CEDS-Data-Warehouse/blob/master/Contributing.md).

# Data Warehouse Parquet Design Guidelines

## Naming Conventions

The CEDS Data Warehouse Parquet standard is based on the CEDS Data Warehouse data standard fact tables.  
The fields within the files are derived from the table and column names in the Fact and Dimension tables in this format "\[*Fact table column name minus the 'ID' at the end\]\_\[*Dimension table column name\]"
For example, RDS.FactK12StudentEnrollments.EnrollmentStartDateId, which links to RDS.DimDates, translates to the following fields in the Parquet standard:

FactK12StudentEnrollmentsParquet
* EnrollmentEntryDate_DateValue
* EnrollmentEntryDate_Day
* EnrollmentEntryDate_DayOfWeek
* EnrollmentEntryDate_DayOfYear
* EnrollmentEntryDate_Month
* EnrollmentEntryDate_MonthName
* EnrollmentEntryDate_SubmissionYear
* EnrollmentEntryDate_Year

Each of the CEDS Data Warehouse Parquet file standards is documented in [CEDS-Data-Warehouse-Parquet-File-Metadata.xlsx](/docs/CEDS-Data-Warehouse-Parquet-File-Metadata.xlsx)
