CREATE OR ALTER VIEW [RDS].[vwDimK12JobsParquet] AS
	SELECT fact.DimK12JobId
	, fact.JobIdentifierLea
	, fact.JobIdentifierSchool
	, fact.JobIdentifierSea
	, fact.JobTitle
FROM RDS.DimK12Jobs fact
