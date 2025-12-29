-- View: RDS.vwDimEarlyLearningOrganizationsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimEarlyLearningOrganizationsParquet] AS
CREATE   VIEW RDS.vwDimEarlyLearningOrganizationsParquet AS SELECT fact.DimEarlyLearningOrganizationId
	, fact.StateLicensedFacilityCapacity
FROM RDS.DimEarlyLearningOrganizations fact
