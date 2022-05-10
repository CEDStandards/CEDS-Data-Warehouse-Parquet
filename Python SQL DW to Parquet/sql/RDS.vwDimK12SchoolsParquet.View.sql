USE [CEDS-Data-Warehouse-V9-2-0-0]
GO
/****** Object:  View [RDS].[vwDimK12SchoolsParquet]    Script Date: 5/10/2022 2:48:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [RDS].[vwDimK12SchoolsParquet] AS SELECT fact.DimK12SchoolId
	, fact.SeaOrganizationName
	, fact.SeaIdentifierSea
	, fact.StateAnsiCode
	, fact.StateAbbreviationCode
	, fact.StateAbbreviationDescription
	, fact.IeuOrganizationName
	, fact.IeuOrganizationIdentifierSea
	, fact.LeaName
	, fact.LeaIdentifierNces
	, fact.LeaIdentifierSea
	, fact.PriorLeaIdentifierSea
	, fact.LeaTypeCode
	, fact.LeaTypeDescription
	, fact.LeaTypeEdFactsCode
	, fact.NameOfInstitution
	, fact.SchoolIdentifierNces
	, fact.SchoolIdentifierSea
	, fact.PrimaryCharterSchoolAuthorizingOrganizationIdentifierSea
	, fact.SecondaryCharterSchoolAuthorizingOrganizationIdentifierSea
	, fact.OperationalStatusEffectiveDate
	, fact.PriorSchoolIdentifierSea
	, fact.CharterSchoolIndicator
	, fact.CharterSchoolContractIdNumber
	, fact.CharterSchoolContractApprovalDate
	, fact.CharterSchoolContractRenewalDate
	, fact.ReportedFederally
	, fact.SchoolTypeCode
	, fact.SchoolTypeDescription
	, fact.SchoolTypeEdFactsCode
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
	, fact.SchoolOperationalStatus
	, fact.SchoolOperationalStatusEdFactsCode
	, fact.SchoolOperationalStatusEffectiveDate
	, fact.CharterSchoolStatus
	, fact.ReconstitutedStatus
	, fact.AdministrativeFundingControlCode
	, fact.AdministrativeFundingControlDescription
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimK12Schools fact
GO
