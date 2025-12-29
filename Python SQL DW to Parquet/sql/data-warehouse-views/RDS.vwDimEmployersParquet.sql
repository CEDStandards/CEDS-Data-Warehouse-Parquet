-- View: RDS.vwDimEmployersParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimEmployersParquet] AS
CREATE   VIEW RDS.vwDimEmployersParquet AS SELECT fact.DimEmployerId
	, fact.EmployerOrganizationName
	, fact.EmployerOrganizationIdentifierSea
	, fact.SeaOrganizationName
	, fact.SeaOrganizationIdentifierSea
	, fact.StateAnsiCode
	, fact.StateAbbreviationCode
	, fact.StateAbbreviationDescription
	, fact.MailingAddressStreetNumberAndName
	, fact.MailingAddressApartmentRoomOrSuiteNumber
	, fact.MailingAddressCity
	, fact.MailingAddressStateAbbreviation
	, fact.MailingAddressPostalCode
	, fact.MailingAddressCountyAnsiCodeCode
	, fact.OutOfStateIndicator
	, fact.OrganizationOperationalStatus
	, fact.OperationalStatusEffectiveDate
	, fact.PhysicalAddressStreetNumberAndName
	, fact.PhysicalAddressApartmentRoomOrSuiteNumber
	, fact.PhysicalAddressCity
	, fact.PhysicalAddressPostalCode
	, fact.PhysicalAddressStateAbbreviation
	, fact.PhysicalAddressCountyAnsiCodeCode
	, fact.TelephoneNumber
	, fact.WebSiteAddress
	, fact.OrganizationRegionGeoJson
	, fact.Latitude
	, fact.Longitude
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimEmployers fact
