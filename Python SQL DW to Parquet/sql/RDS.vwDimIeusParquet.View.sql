USE [CEDS-Data-Warehouse-V9-2-0-0]
GO
/****** Object:  View [RDS].[vwDimIeusParquet]    Script Date: 5/10/2022 2:48:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [RDS].[vwDimIeusParquet] AS SELECT fact.DimIeuId
	, fact.IeuOrganizationName
	, fact.IeuOrganizationIdentifierSea
	, fact.SeaOrganizationName
	, fact.SeaIdentifierSea
	, fact.StateANSICode
	, fact.StateAbbreviationCode
	, fact.StateAbbreviationDescription
	, fact.MailingAddressStreetNumberAndName
	, fact.MailingAddressApartmentRoomOrSuiteNumber
	, fact.MailingAddressCity
	, fact.MailingAddressStateAbbreviation
	, fact.MailingAddressPostalCode
	, fact.MailingAddressCountyAnsiCode
	, fact.OutOfStateIndicator
	, fact.OrganizationOperationalStatus
	, fact.OperationalStatusEffectiveDate
	, fact.PhysicalAddressStreetNumberAndName
	, fact.PhysicalAddressApartmentRoomOrSuiteNumber
	, fact.PhysicalAddressCity
	, fact.PhysicalAddressPostalCode
	, fact.PhysicalAddressStateAbbreviation
	, fact.PhysicalAddressCountyAnsiCode
	, fact.TelephoneNumber
	, fact.WebSiteAddress
	, fact.OrganizationRegionGeoJson
	, fact.Latitude
	, fact.Longitude
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimIeus fact
GO
