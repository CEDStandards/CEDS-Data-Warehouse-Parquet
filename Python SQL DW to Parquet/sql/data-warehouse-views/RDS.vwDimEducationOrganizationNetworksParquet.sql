CREATE OR ALTER VIEW [RDS].[vwDimEducationOrganizationNetworksParquet] AS
	SELECT fact.DimEducationOrganizationNetworkId
	, fact.OrganizationIdentifierSea
	, fact.OrganizationTypeCode
	, fact.OrganizationTypeDescription
	, fact.OrganizationName
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimEducationOrganizationNetworks fact
