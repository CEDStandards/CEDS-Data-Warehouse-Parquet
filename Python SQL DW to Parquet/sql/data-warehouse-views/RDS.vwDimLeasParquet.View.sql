/****** Object:  View [RDS].[vwDimLeasParquet]    Script Date: 5/10/2022 2:48:07 PM ******/

CREATE OR ALTER VIEW [RDS].[vwDimLeasParquet] AS 
SELECT fact.DimLeaID
	, fact.IeuOrganizationName
	, fact.IeuOrganizationIdentifierSea
	, fact.StateAnsiCode
	, fact.StateAbbreviationCode
	, fact.StateAbbreviationDescription
	, fact.SeaOrganizationName
	, fact.SeaIdentifierSea
	, fact.LeaName
	, fact.LeaIdentifierNces
	, fact.LeaIdentifierSea
	, fact.PriorLeaIdentifierSea
	, fact.LeaSupervisoryUnionIdentificationNumber
	, fact.ReportedFederally
	, fact.LeaTypeCode
	, fact.LeaTypeDescription
	, fact.LeaTypeEdFactsCode
	, fact.MailingAddressStreetNumberAndName
	, fact.MailingAddressApartmentRoomOrSuiteNumber
	, fact.MailingAddressCity
	, fact.MailingAddressPostalCode
	, fact.MailingAddressStateAbbreviation
	, fact.MailingAddressCountyAnsiCode
	, fact.PhysicalAddressStreetNumberAndName
	, fact.PhysicalAddressApartmentRoomOrSuiteNumber
	, fact.PhysicalAddressCity
	, fact.PhysicalAddressPostalCode
	, fact.PhysicalAddressStateAbbreviation
	, fact.PhysicalAddressCountyAnsiCode
	, fact.Longitude
	, fact.Latitude
	, fact.TelephoneNumber
	, fact.WebSiteAddress
	, fact.OutOfStateIndicator
	, fact.LeaOperationalStatus
	, fact.LeaOperationalStatusEdFactsCode
	, fact.OperationalStatusEffectiveDate
	, fact.CharterLeaStatus
	, fact.ReconstitutedStatus
	, fact.McKinneyVentoSubgrantRecipient
	, fact.NameOfInstitution
	, fact.EffectiveDate
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimLeas fact
GO
