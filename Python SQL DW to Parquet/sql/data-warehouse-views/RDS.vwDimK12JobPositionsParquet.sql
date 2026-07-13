CREATE OR ALTER VIEW [RDS].[vwDimK12JobPositionsParquet] AS
	SELECT fact.DimK12JobPositionId
	, fact.JobPositionIdentifierSea
	, fact.JobPositionIdentifierLea
	, fact.JobPositionIdentifierSchool
	, fact.PositionTitle
	, fact.HourlyWage
	, fact.StaffCompensationBaseSalary
FROM RDS.DimK12JobPositions fact
