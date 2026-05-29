CREATE OR ALTER VIEW [RDS].[vwDimEarlyLearningOrganizationsParquet] AS
	SELECT fact.DimEarlyLearningOrganizationId
	, fact.StateLicensedFacilityCapacity
FROM RDS.DimEarlyLearningOrganizations fact
