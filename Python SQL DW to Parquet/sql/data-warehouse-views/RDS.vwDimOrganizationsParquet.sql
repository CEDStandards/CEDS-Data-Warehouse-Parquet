-- View: RDS.vwDimOrganizationsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimOrganizationsParquet] AS
CREATE   VIEW RDS.vwDimOrganizationsParquet AS SELECT fact.DimOrganizationId
	, fact.OrganizationName
	, fact.ShortNameOfOrganization
	, fact.OrganizationIdentifierSea
	, fact.OrganizationIdentifierDuns
	, fact.OrganizationIdentifierFein
	, fact.OrganizationTypeCode
	, fact.OrganizationTypeDescription
	, fact.OrganizationOperationalStatusCode
	, fact.OrganizationOperationalStatusDescription
	, fact.OperationalStatusEffectiveDate
	, fact.StateAnsiCode
	, fact.StateAbbreviationCode
	, fact.StateAbbreviationDescription
	, fact.TelephoneNumberMain
	, fact.TelephoneNumberFax
	, fact.ElectronicMailAddress
	, fact.WebSiteAddress
	, fact.OutOfStateIndicator
	, fact.OrganizationRegionGeoJson
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimOrganizations fact
