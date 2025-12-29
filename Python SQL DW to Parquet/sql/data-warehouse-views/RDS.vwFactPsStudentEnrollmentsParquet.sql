-- View: RDS.vwFactPsStudentEnrollmentsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwFactPsStudentEnrollmentsParquet] AS
CREATE   VIEW RDS.vwFactPsStudentEnrollmentsParquet AS SELECT fact.FactPsStudentEnrollmentId
	, DataCollection.SourceSystemDataCollectionIdentifier AS DataCollection_SourceSystemDataCollectionIdentifier
	, DataCollection.SourceSystemName AS DataCollection_SourceSystemName
	, DataCollection.DataCollectionName AS DataCollection_DataCollectionName
	, DataCollection.DataCollectionDescription AS DataCollection_DataCollectionDescription
	, DataCollection.DataCollectionOpenDate AS DataCollection_DataCollectionOpenDate
	, DataCollection.DataCollectionCloseDate AS DataCollection_DataCollectionCloseDate
	, DataCollection.DataCollectionAcademicSchoolYear AS DataCollection_DataCollectionAcademicSchoolYear
	, DataCollection.DataCollectionSchoolYear AS DataCollection_DataCollectionSchoolYear
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
	, PsInstitution.MailingAddressCountyAnsiCodeCode AS PsInstitution_MailingAddressCountyAnsiCodeCode
	, PsInstitution.PhysicalAddressCountyAnsiCodeCode AS PsInstitution_PhysicalAddressCountyAnsiCodeCode
	, PsStudent.FirstName AS PsStudent_FirstName
	, PsStudent.MiddleName AS PsStudent_MiddleName
	, PsStudent.LastOrSurname AS PsStudent_LastOrSurname
	, PsStudent.Birthdate AS PsStudent_Birthdate
	, PsStudent.ELChildChildIdentifierState AS PsStudent_ELChildChildIdentifierState
	, PsStudent.K12StudentStudentIdentifierState AS PsStudent_K12StudentStudentIdentifierState
	, PsStudent.K12StudentStudentIdentifierDistrict AS PsStudent_K12StudentStudentIdentifierDistrict
	, PsStudent.K12StudentStudentIdentifierNationalMigrant AS PsStudent_K12StudentStudentIdentifierNationalMigrant
	, PsStudent.Ps