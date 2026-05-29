CREATE OR ALTER VIEW [RDS].[vwDimK12AcademicAwardsParquet] AS
	SELECT fact.DimK12AcademicAwardId
	, fact.AcademicAwardTitle
FROM RDS.DimK12AcademicAwards fact
