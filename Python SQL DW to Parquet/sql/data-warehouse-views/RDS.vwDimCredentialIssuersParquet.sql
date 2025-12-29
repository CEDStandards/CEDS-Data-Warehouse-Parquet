-- View: RDS.vwDimCredentialIssuersParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimCredentialIssuersParquet] AS
CREATE   VIEW RDS.vwDimCredentialIssuersParquet AS SELECT fact.DimCredentialIssuerId
	, fact.CredentialIssuerOrganizationName
	, fact.CredentialIssuerOrganizationIdentifierSea
	, fact.SeaOrganizationName
	, fact.SeaOrganizationIdentifierSea
	, fact.CTDLOrganizationTypeCode
	, fact.CTDLOrganizationTypeDescription
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
	, fact.StateIssuingProfessionalCredentialOrLicenseCode
	, fact.StateIssuingProfessionalCredentialOrLicenseDescription
	, fact.TelephoneNumber
	, fact.WebSiteAddress
	, fact.OrganizationRegionGeoJson
	, fact.Latitude
	, fact.Longitude
	, fact.ProgramSponosorTypeCode
	, fact.ProgramSponosorTypeDescription
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimCredentialIssuers fact
