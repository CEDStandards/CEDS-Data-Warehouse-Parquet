-- Generate Parquet File Spreadsheet.sql
--
-- Produces the contents of CEDS-Data-Warehouse-Parquet-File-Metadata.xlsx.
-- Run this against a CEDS Data Warehouse (with the Parquet views deployed),
-- then copy the results into the spreadsheet's Sheet1 (preserving the header
-- row: File Name | Column Name | Ordinal Position | Allows Nulls? |
-- Data Type | Max Length | Precision | Scale).
--
-- Covers every RDS.vw%Parquet view's columns. Raw Dim/Fact tables that are
-- exported as-is (without a view) are not included in this spreadsheet —
-- their schema is documented by the source CEDS-Data-Warehouse repository.

SELECT
      c.TABLE_NAME                                  AS [File Name]
    , c.COLUMN_NAME                                 AS [Column Name]
    , c.ORDINAL_POSITION                            AS [Ordinal Position]
    , c.IS_NULLABLE                                 AS [Allows Nulls?]
    , c.DATA_TYPE                                   AS [Data Type]
    , ISNULL(c.CHARACTER_MAXIMUM_LENGTH, 0)         AS [Max Length]
    , ISNULL(c.NUMERIC_PRECISION, 0)                AS [Precision]
    , ISNULL(c.NUMERIC_SCALE, 0)                    AS [Scale]
FROM INFORMATION_SCHEMA.COLUMNS c
INNER JOIN INFORMATION_SCHEMA.VIEWS v
    ON v.TABLE_SCHEMA = c.TABLE_SCHEMA
   AND v.TABLE_NAME   = c.TABLE_NAME
WHERE c.TABLE_SCHEMA = 'RDS'
  AND c.TABLE_NAME LIKE 'vw%Parquet'
ORDER BY c.TABLE_NAME, c.ORDINAL_POSITION;
