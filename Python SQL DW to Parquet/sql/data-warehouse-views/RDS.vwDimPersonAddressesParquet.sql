-- View: RDS.vwDimPersonAddressesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimPersonAddressesParquet] AS
CREATE   VIEW RDS.vwDimPersonAddressesParquet AS SELECT fact.DimPersonAddressId
	, fact.AddressTypeForLearnerOrFamilyCode
	, fact.AddressTypeForLearnerOrFamilyDescription
	, fact.AddressStreetNumberAndName
	, fact.AddressApartmentRoomOrSuiteNumber
	, fact.AddressCity
	, fact.StateAbbreviationCode
	, fact.StateAbbreviationDescription
	, fact.AddressPostalCode
	, fact.AddressCountyName
	, fact.CountryCodeCode
	, fact.CountryCodeDescription
	, fact.Latitude
	, fact.Longitude
	, fact.CountyAnsiCodeCode
	, fact.CountyAnsiCodeDescription
	, fact.DoNotPublishIndicator
	, fact.PersonalInformationVerificationCode
	, fact.PersonalInformationVerificationDescription
FROM RDS.DimPersonAddresses fact
