-- View: RDS.vwDimCharterSchoolAuthorizersParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimCharterSchoolAuthorizersParquet] AS
CREATE   VIEW RDS.vwDimCharterSchoolAuthorizersParquet AS SELECT fact.DimCharterSchoolAuthorizerId
	, fact.CharterSchoolAuthorizingOrganizationOrganizationIdentifierSea
	, fact.CharterSchoolAuthorizingOrganizationOrganizationName
	, fact.CharterSchoolAuthorizerTypeCode
	, fact.CharterSchoolAuthorizerTypeDescription
	, fact.CharterSchoolAuthorizerTypeEdFactsCode
	, fact.StateAbbreviationCode
	, fact.StateAnsiCode
	, fact.StateAbbreviationDescription
	, fact.MailingAddressStreetNumberAndName
	, fact.MailingAddressApartmentRoomOrSuiteNumber
	, fact.MailingAddressCity
	, fact.MailingAddressPostalCode
	, fact.MailingAddressStateAbbreviation
	, fact.MailingAddressCountyAnsiCodeCode
	, fact.PhysicalAddressStreetNumberAndName
	, fact.PhysicalAddressApartmentRoomOrSuiteNumber
	, fact.PhysicalAddressCity
	, fact.PhysicalAddressPostalCode
	, fact.PhysicalAddressStateAbbreviation
	, fact.PhysicalAddressCountyAnsiCodeCode
	, fact.TelephoneNumber
	, fact.WebSiteAddress
	, fact.OutOfStateIndicator
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimCharterSchoolAuthorizers fact
