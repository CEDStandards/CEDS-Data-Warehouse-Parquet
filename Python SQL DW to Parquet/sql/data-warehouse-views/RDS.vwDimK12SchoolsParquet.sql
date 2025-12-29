-- View: RDS.vwDimK12SchoolsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimK12SchoolsParquet] AS
CREATE   VIEW RDS.vwDimK12SchoolsParquet AS SELECT fact.DimK12SchoolId
	, fact.LeaOrganizationName
	, fact.LeaIdentifierNces
	, fact.LeaIdentifierSea
	, fact.NameOfInstitution
	, fact.SchoolIdentifierNces
	, fact.SchoolIdentifierSea
	, fact.SchoolIdentifierAct
	, fact.SeaOrganizationName
	, fact.SeaOrganizationIdentifierSea
	, fact.StateAnsiCode
	, fact.StateAbbreviationCode
	, fact.StateAbbreviationDescription
	, fact.PriorLeaIdentifierSea
	, fact.PriorSchoolIdentifierSea
	, fact.CharterSchoolIndicator
	, fact.CharterSchoolContractIdNumber
	, fact.CharterSchoolContractApprovalDate
	, fact.CharterSchoolContractRenewalDate
	, fact.ReportedFederally
	, fact.LeaTypeCode
	, fact.LeaTypeDescription
	, fact.LeaTypeEdFactsCode
	, fact.SchoolTypeCode
	, fact.SchoolTypeDescription
	, fact.SchoolTypeEdFactsCode
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
	, fact.SchoolOperationalStatus
	, fact.SchoolOperationalStatusEdFactsCode
	, fact.CharterSchoolStatus
	, fact.ReconstitutedStatus
	, fact.MailingAddressApartmentRoomOrSuiteNumber
	, fact.PhysicalAddressApartmentRoomOrSuiteNumber
	, fact.IeuOrganizationName
	, fact.IeuOrganizationIdentifierSea
	, fact.MailingAddressCountyAnsiCodeCode
	, fact.MailingAddressCountyName
	, fact.PhysicalAddressCountyAnsiCodeCode
	, fact.PhysicalAddressCountyName
	, fact.Longitude
	, fact.Latitude
	, fact.SchoolOperationalStatusEffectiveDate
	, fact.AdministrativeFundingControlCode
	, fact.AdministrativeFundingControlDescription
FROM RDS.DimK12Schools fact
