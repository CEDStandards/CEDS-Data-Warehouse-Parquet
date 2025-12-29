-- View: RDS.vwDimSeasParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimSeasParquet] AS
CREATE   VIEW RDS.vwDimSeasParquet AS SELECT fact.DimSeaId
	, fact.SeaOrganizationName
	, fact.SeaOrganizationIdentifierSea
	, fact.StateAnsiCode
	, fact.StateAbbreviationCode
	, fact.StateAbbreviationDescription
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
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
	, fact.MailingAddressApartmentRoomOrSuiteNumber
	, fact.PhysicalAddressApartmentRoomOrSuiteNumber
	, fact.MailingAddressCountyAnsiCodeCode
	, fact.PhysicalAddressCountyAnsiCodeCode
FROM RDS.DimSeas fact
