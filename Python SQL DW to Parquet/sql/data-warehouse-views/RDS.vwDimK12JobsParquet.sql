-- View: RDS.vwDimK12JobsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimK12JobsParquet] AS
CREATE   VIEW RDS.vwDimK12JobsParquet AS SELECT fact.DimK12JobId
	, fact.JobIdentifierLea
	, fact.JobIdentifierSchool
	, fact.JobIdentifierSea
	, fact.JobTitle
FROM RDS.DimK12Jobs fact
