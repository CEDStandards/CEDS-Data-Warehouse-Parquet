-- View: RDS.vwDimOrganizationAddressesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimOrganizationAddressesParquet] AS
CREATE   VIEW RDS.vwDimOrganizationAddressesParquet AS SELECT fact.DimOrganizationAddressId
	, fact.AddressStreetNumberAndName
	, fact.AddressApartmentRoomOrSuiteNumber
	, fact.BuildingSiteNumber
	, fact.AddressCity
	, fact.AddressStateAbbreviation
	, fact.AddressPostalCode
	, fact.CountyAnsiCodeCode
	, fact.AddressCountyName
	, fact.Latitude
	, fact.Longitude
	, fact.AddressTypeForOrganizationCode
	, fact.AddressTypeForOrganizationDescription
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimOrganizationAddresses fact
