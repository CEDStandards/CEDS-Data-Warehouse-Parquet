CREATE   VIEW RDS.vwDimIeusParquet AS SELECT fact.DimIeuId
	, fact.IeuOrganizationName
	, fact.IeuOrganizationIdentifierSea
	, fact.SeaOrganizationName
	, fact.SeaOrganizationIdentifierSea
	, fact.StateANSICode
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
FROM RDS.DimIeus fact

