USE [CEDS-Data-Warehouse-V9-2-0-0]
GO
/****** Object:  View [RDS].[vwDimPsInstitutionsParquet]    Script Date: 5/10/2022 2:48:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [RDS].[vwDimPsInstitutionsParquet] AS SELECT fact.DimPsInstitutionID
	, fact.NameOfInstitution
	, fact.ShortNameOfInstitution
	, fact.IPEDSIdentifier
	, fact.OrganizationOperationalStatus
	, fact.OperationalStatusEffectiveDate
	, fact.MailingAddressStreetNameAndNumber
	, fact.MailingAddressApartmentRoomOrSuite
	, fact.MailingAddressCity
	, fact.MailingAddressPostalCode
	, fact.MailingAddressStateAbbreviation
	, fact.MailingAddressCountyAnsiCode
	, fact.PhysicalAddressStreetNameAndNumber
	, fact.PhysicalAddressApartmentRoomOrSuite
	, fact.PhysicalAddressCity
	, fact.PhysicalAddressPostalCode
	, fact.PhysicalAddressStateAbbreviation
	, fact.PhysicalAddressCountyAnsiCode
	, fact.TelephoneNumber
	, fact.WebsiteAddress
	, fact.Latitude
	, fact.Longitude
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimPsInstitutions fact
GO
