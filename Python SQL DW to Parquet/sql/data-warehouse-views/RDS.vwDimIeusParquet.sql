-- View: RDS.vwDimIeusParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimIeusParquet] AS
CREATE   VIEW RDS.vwDimIeusParquet AS SELECT fact.DimIeuId
	, fact.IeuOrganizationName
	, fact.IeuOrganizationIdentifierSea
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
	, fact.MailingAddressCountyName
	, fact.OutOfStateIndicator
	, fact.OrganizationOperationalStatus
	, fact.OperationalStatusEffectiveDate
	, fact.PhysicalAddressStreetNumberAndName
	, fact.PhysicalAddressApartmentRoomOrSuiteNumber
	, fact.PhysicalAddressCity
	, fact.PhysicalAddressPostalCode
	, fact.PhysicalAddressStateAbbreviation
	, fact.PhysicalAddressCountyAnsiCodeCode
	, fact.PhysicalAddressCountyName
	, fact.TelephoneNumber
	, fact.WebSiteAddress
	, fact.OrganizationRegionGeoJson
	, fact.Latitude
	, fact.Longitude
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimIeus fact
