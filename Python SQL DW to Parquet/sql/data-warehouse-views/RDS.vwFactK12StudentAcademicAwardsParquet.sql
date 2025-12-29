-- View: RDS.vwFactK12StudentAcademicAwardsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwFactK12StudentAcademicAwardsParquet] AS
CREATE   VIEW RDS.vwFactK12StudentAcademicAwardsParquet AS SELECT fact.FactK12StudentAcademicAwardId
	, SchoolYear.SchoolYear AS SchoolYear_SchoolYear
	, SchoolYear.SessionBeginDate AS SchoolYear_SessionBeginDate
	, SchoolYear.SessionEndDate AS SchoolYear_SessionEndDate
	, CountDate.DateValue AS CountDate_DateValue
	, CountDate.Day AS CountDate_Day
	, CountDate.DayOfWeek AS CountDate_DayOfWeek
	, CountDate.DayOfYear AS CountDate_DayOfYear
	, CountDate.Month AS CountDate_Month
	, CountDate.MonthName AS CountDate_MonthName
	, CountDate.SubmissionYear AS CountDate_SubmissionYear
	, CountDate.Year AS CountDate_Year
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
	, Sea.SeaOrganizationName AS Sea_SeaOrganizationName
	, Sea.SeaOrganizationIdentifierSea AS Sea_SeaOrganizationIdentifierSea
	, Sea.StateAnsiCode AS Sea_StateAnsiCode
	, Sea.StateAbbreviationCode AS Sea_StateAbbreviationCode
	, Sea.StateAbbreviationDescription AS Sea_StateAbbreviationDescription
	, Sea.MailingAddressCity AS Sea_MailingAddressCity
	, Sea.MailingAddressPostalCode AS Sea_MailingAddressPostalCode
	, Sea.MailingAddressStateAbbreviation AS Sea_MailingAddressStateAbbreviation
	, Sea.MailingAddressStreetNumberAndName AS Sea_MailingAddressStreetNumberAndName
	, Sea.PhysicalAddressCity AS Sea_PhysicalAddressCity
	, Sea.PhysicalAddressPostalCode AS Sea_PhysicalAddressPostalCode
	, Sea.PhysicalAddressStateAbbreviation AS Sea_PhysicalAddressStateAbbreviation
	, Sea.PhysicalAddressStreetNumberAndName AS Sea_PhysicalAddressStreetNumberAndName
	, Sea.TelephoneNumber AS Sea_TelephoneNumber
	, Sea.WebSiteAddress AS Sea_WebSiteAddress
	, Sea.RecordStartDateTime AS Sea_RecordStartDateTime
	, Sea.RecordEndDateTime AS Sea_RecordEndDateTime
	, Sea.MailingAddressApartmentRoomOrSuiteNumber AS Sea_MailingAddressApartmentRoomOrSuiteNumber
	, Sea.PhysicalAddressApartmentRoomOrSuiteNumber AS Sea_PhysicalAddressApartmentRoomOrSuiteNumber
	, Sea.MailingAddressCountyAnsiCodeCode AS Sea_MailingAddressCountyAnsiCodeCode
	, Sea.PhysicalAddressCountyAnsiCodeCode AS Sea_PhysicalAddressCountyAnsiCodeCode
	, LeaAccountability.IeuOrganizationName AS LeaAccountability_IeuOrganizationName
	, LeaAccountability.IeuOrganizationIdentifierSea AS LeaAccountability_IeuOrganizationIdentifierSea
	, LeaAccountability.StateAnsiCode AS LeaAccountability_StateAnsiCode
	, LeaAccountability.StateAbbreviationCode AS LeaAccountability_StateAbbreviationCode
	, LeaAccountability.StateAbbreviationDescription AS LeaAccountability_StateAbbreviationDescription
	, LeaAccountability.SeaOrganizationName AS LeaAccountability_SeaOrganizationName
	, LeaAccountability.SeaOrganizationIdentifierSea AS LeaAccountability_SeaOrganizationIdentifierSea
	, LeaAccountability.LeaOrganizationName AS LeaAccountability_LeaOrganizationName
	, LeaAccountability.LeaIdentifierNces AS LeaAccountability_LeaIdentifierNces
	, LeaAccountability.LeaIdentifierSea AS LeaAccountability_LeaIdentifierSea
	, LeaAccountability.PriorLeaIdentifierSea AS LeaAccountability_PriorLeaIdentifierSea
	, LeaAccountability.LeaSupervisoryUnionIdentificationNumber AS LeaAccountability_LeaSupervisoryUnionIdentificationNumber
	, LeaAccountability.ReportedFederally AS LeaAccountability_ReportedFederally
	, LeaAccountability.LeaTypeCode AS LeaAccountability_LeaTypeCode
	, LeaAccountability.LeaTypeDescription AS LeaAccountability_LeaTypeDescription
	, LeaAccountability.LeaTypeEdFactsCode AS LeaAccountability_LeaTypeEdFactsCode
	, LeaAccountability.MailingAddressStreetNumberAndName AS LeaAccountability_MailingAddressStreetNumberAndName
	, LeaAccountability.MailingAddressApartmentRoomOrSuiteNumber AS LeaAccountability_MailingAddressApartmentRoomOrSuiteNumber
	, LeaAccountability.MailingAddressCity AS LeaAccountability_MailingAddressCity
	, LeaAccountability.MailingAddressPostalCode AS LeaAccountability_MailingAddressPostalCode
	, LeaAccountability.MailingAddressStateAbbreviation AS LeaAccountability_MailingAddressSt