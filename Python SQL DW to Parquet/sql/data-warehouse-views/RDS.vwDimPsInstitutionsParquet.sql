CREATE OR ALTER VIEW [RDS].[vwDimPsInstitutionsParquet] AS
	SELECT fact.DimPsInstitutionId
	, fact.NameOfInstitution
	, fact.ShortNameOfInstitution
	, fact.IPEDSIdentifier
	, fact.Opeid
	, fact.OrganizationOperationalStatus
	, fact.OperationalStatusEffectiveDate
	, fact.MostPrevalentLevelOfInstitutionCode
	, fact.MailingAddressStreetNumberAndName
	, fact.MailingAddressApartmentRoomOrSuiteNumber
	, fact.MailingAddressCity
	, fact.MailingAddressPostalCode
	, fact.MailingAddressStateAbbreviation
	, fact.PhysicalAddressStreetNumberAndName
	, fact.PhysicalAddressApartmentRoomOrSuiteNumber
	, fact.PhysicalAddressCity
	, fact.PhysicalAddressPostalCode
	, fact.PhysicalAddressStateAbbreviation
	, fact.TelephoneNumber
	, fact.WebSiteAddress
	, fact.Latitude
	, fact.Longitude
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimPsInstitutions fact
