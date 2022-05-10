USE [CEDS-Data-Warehouse-V9-2-0-0]
GO
/****** Object:  View [RDS].[vwDimSeasParquet]    Script Date: 5/10/2022 2:48:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [RDS].[vwDimSeasParquet] AS SELECT fact.DimSeaId
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
