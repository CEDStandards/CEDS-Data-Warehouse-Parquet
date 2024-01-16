CREATE   VIEW RDS.vwDimPsInstitutionsParquet AS SELECT fact.DimPsInstitutionID
	, fact.NameOfInstitution
	, fact.ShortNameOfInstitution
	, fact.IPEDSIdentifier
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
	, fact.WebsiteAddress
	, fact.Latitude
	, fact.Longitude
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
	, fact.MailingAddressCountyAnsiCodeCode
	, fact.PhysicalAddressCountyAnsiCodeCode
FROM RDS.DimPsInstitutions fact

