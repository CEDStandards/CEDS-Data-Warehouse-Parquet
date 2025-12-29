-- View: RDS.vwDimEducationOrganizationNetworksParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimEducationOrganizationNetworksParquet] AS
CREATE   VIEW RDS.vwDimEducationOrganizationNetworksParquet AS SELECT fact.DimEducationOrganizationNetworkId
	, fact.OrganizationIdentifierSea
	, fact.OrganizationTypeCode
	, fact.OrganizationTypeDescription
	, fact.OrganizationName
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimEducationOrganizationNetworks fact
