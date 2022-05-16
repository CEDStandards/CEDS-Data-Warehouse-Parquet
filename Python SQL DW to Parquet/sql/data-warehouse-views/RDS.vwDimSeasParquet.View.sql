/****** Object:  View [RDS].[vwDimSeasParquet]    Script Date: 5/10/2022 2:48:07 PM ******/

CREATE OR ALTER VIEW [RDS].[vwDimSeasParquet] AS 
SELECT fact.DimSeaId
	, fact.SeaOrganizationName
	, fact.SeaIdentifierSea
	, fact.StateAnsiCode
	, fact.StateAbbreviationCode
	, fact.StateAbbreviationDescription
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
	, fact.TelephoneNumber
	, fact.WebSiteAddress
	, fact.CteGraduationRateInclusionCode
	, fact.CteGraduationRateInclusionDescription
	, fact.CteGraduationRateInclusionEdFactsCode
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimSeas fact
GO
