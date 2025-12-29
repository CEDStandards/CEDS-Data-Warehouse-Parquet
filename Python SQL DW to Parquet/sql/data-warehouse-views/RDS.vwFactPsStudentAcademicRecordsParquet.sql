-- View: RDS.vwFactPsStudentAcademicRecordsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwFactPsStudentAcademicRecordsParquet] AS
CREATE   VIEW RDS.vwFactPsStudentAcademicRecordsParquet AS SELECT fact.FactPsStudentAcademicRecordId
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
	, PsInstitution.NameOfInstitution AS PsInstitution_NameOfInstitution
	, PsInstitution.ShortNameOfInstitution AS PsInstitution_ShortNameOfInstitution
	, PsInstitution.IPEDSIdentifier AS PsInstitution_IPEDSIdentifier
	, PsInstitution.OrganizationOperationalStatus AS PsInstitution_OrganizationOperationalStatus
	, PsInstitution.OperationalStatusEffectiveDate AS PsInstitution_OperationalStatusEffectiveDate
	, PsInstitution.MostPrevalentLevelOfInstitutionCode AS PsInstitution_MostPrevalentLevelOfInstitutionCode
	, PsInstitution.MailingAddressStreetNumberAndName AS PsInstitution_MailingAddressStreetNumberAndName
	, PsInstitution.MailingAddressApartmentRoomOrSuiteNumber AS PsInstitution_MailingAddressApartmentRoomOrSuiteNumber
	, PsInstitution.MailingAddressCity AS PsInstitution_MailingAddressCity
	, PsInstitution.MailingAddressPostalCode AS PsInstitution_MailingAddressPostalCode
	, PsInstitution.MailingAddressStateAbbreviation AS PsInstitution_MailingAddressStateAbbreviation
	, PsInstitution.PhysicalAddressStreetNumberAndName AS PsInstitution_PhysicalAddressStreetNumberAndName
	, PsInstitution.PhysicalAddressApartmentRoomOrSuiteNumber AS PsInstitution_PhysicalAddressApartmentRoomOrSuiteNumber
	, PsInstitution.PhysicalAddressCity AS PsInstitution_PhysicalAddressCity
	, PsInstitution.PhysicalAddressPostalCode AS PsInstitution_PhysicalAddressPostalCode
	, PsInstitution.PhysicalAddressStateAbbreviation AS PsInstitution_PhysicalAddressStateAbbreviation
	, PsInstitution.TelephoneNumber AS PsInstitution_TelephoneNumber
	, PsInstitution.WebSiteAddress AS PsInstitution_WebSiteAddress
	, PsInstitution.Latitude AS PsInstitution_Latitude
	, PsInstitution.Longitude AS PsInstitution_Longitude
	, PsInstitution.RecordStartDateTime AS PsInstitution_RecordStartDateTime
	, PsInstitution.RecordEndDateTime AS PsInstitution_RecordEndDateTime
	, PsInstitution.MailingAddressCountyAnsiCodeCode AS PsInstitution_Maili