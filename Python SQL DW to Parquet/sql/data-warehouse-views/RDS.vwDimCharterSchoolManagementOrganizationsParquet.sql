-- View: RDS.vwDimCharterSchoolManagementOrganizationsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimCharterSchoolManagementOrganizationsParquet] AS
CREATE   VIEW RDS.vwDimCharterSchoolManagementOrganizationsParquet AS SELECT fact.DimCharterSchoolManagementOrganizationId
	, fact.CharterSchoolManagementOrganizationOrganizationName
	, fact.CharterSchoolManagementOrganizationOrganizationIdentifierSea
	, fact.StateAbbreviationDescription
	, fact.StateAbbreviationCode
	, fact.StateAnsiCode
	, fact.CharterSchoolManagementOrganizationTypeCode
	, fact.CharterSchoolManagementOrganizationTypeDescription
	, fact.CharterSchoolManagementOrganizationTypeEdFactsCode
	, fact.MailingAddressCity
	, fact.MailingAddressPostalCode
	, fact.MailingAddressStateAbbreviation
	, fact.MailingAddressStreetNumberAndName
	, fact.PhysicalAddressCity
	, fact.PhysicalAddressPostalCode
	, fact.PhysicalAddressStateAbbreviation
	, fact.PhysicalAddressStreetNumberAndName
	, fact.TelephoneNumber
	, fact.WebSiteAddress
	, fact.OutOfStateIndicator
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
	, fact.OrganizationIdentifierFein
FROM RDS.DimCharterSchoolManagementOrganizations fact
