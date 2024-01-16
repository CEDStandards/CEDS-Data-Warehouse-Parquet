CREATE   VIEW RDS.vwFactK12StudentDailyAttendancesParquet AS SELECT fact.FactK12StudentDailyAttendanceId
	, SchoolYear.SchoolYear AS SchoolYear_SchoolYear
	, SchoolYear.SessionBeginDate AS SchoolYear_SessionBeginDate
	, SchoolYear.SessionEndDate AS SchoolYear_SessionEndDate
	, AttendanceEventDate.DateValue AS AttendanceEventDate_DateValue
	, AttendanceEventDate.Day AS AttendanceEventDate_Day
	, AttendanceEventDate.DayOfWeek AS AttendanceEventDate_DayOfWeek
	, AttendanceEventDate.DayOfYear AS AttendanceEventDate_DayOfYear
	, AttendanceEventDate.Month AS AttendanceEventDate_Month
	, AttendanceEventDate.MonthName AS AttendanceEventDate_MonthName
	, AttendanceEventDate.SubmissionYear AS AttendanceEventDate_SubmissionYear
	, AttendanceEventDate.Year AS AttendanceEventDate_Year
	, DataCollection.SourceSystemDataCollectionIdentifier AS DataCollection_SourceSystemDataCollectionIdentifier
	, DataCollection.SourceSystemName AS DataCollection_SourceSystemName
	, DataCollection.DataCollectionName AS DataCollection_DataCollectionName
	, DataCollection.DataCollectionDescription AS DataCollection_DataCollectionDescription
	, DataCollection.DataCollectionOpenDate AS DataCollection_DataCollectionOpenDate
	, DataCollection.DataCollectionCloseDate AS DataCollection_DataCollectionCloseDate
	, DataCollection.DataCollectionAcademicSchoolYear AS DataCollection_DataCollectionAcademicSchoolYear
	, DataCollection.DataCollectionSchoolYear AS DataCollection_DataCollectionSchoolYear
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
	, Ieu.IeuOrganizationName AS Ieu_IeuOrganizationName
	, Ieu.IeuOrganizationIdentifierSea AS Ieu_IeuOrganizationIdentifierSea
	, Ieu.SeaOrganizationName AS Ieu_SeaOrganizationName
	, Ieu.SeaOrganizationIdentifierSea AS Ieu_SeaOrganizationIdentifierSea
	, Ieu.StateANSICode AS Ieu_StateANSICode
	, Ieu.StateAbbreviationCode AS Ieu_StateAbbreviationCode
	, Ieu.StateAbbreviationDescription AS Ieu_StateAbbreviationDescription
	, Ieu.MailingAddressStreetNumberAndName AS Ieu_MailingAddressStreetNumberAndName
	, Ieu.MailingAddressApartmentRoomOrSuiteNumber AS Ieu_MailingAddressApartmentRoomOrSuiteNumber
	, Ieu.MailingAddressCity AS Ieu_MailingAddressCity
	, Ieu.MailingAddressStateAbbreviation AS Ieu_MailingAddressStateAbbreviation
	, Ieu.MailingAddressPostalCode AS Ieu_MailingAddressPostalCode
	, Ieu.MailingAddressCountyAnsiCodeCode AS Ieu_MailingAddressCountyAnsiCodeCode
	, Ieu.OutOfStateIndicator AS Ieu_OutOfStateIndicator
	, Ieu.OrganizationOperationalStatus AS Ieu_OrganizationOperationalStatus
	, Ieu.OperationalStatusEffectiveDate AS Ieu_OperationalStatusEffectiveDate
	, Ieu.PhysicalAddressStreetNumberAndName AS Ieu_PhysicalAddressStreetNumberAndName
	, Ieu.PhysicalAddressApartmentRoomOrSuiteNumber AS Ieu_PhysicalAddressApartmentRoomOrSuiteNumber
	, Ieu.PhysicalAddressCity AS Ieu_PhysicalAddressCity
	, Ieu.PhysicalAddressPostalCode AS Ieu_PhysicalAddressPostalCode
	, Ieu.PhysicalAddressStateAbbreviation AS Ieu_PhysicalAddressStateAbbreviation
	, Ieu.PhysicalAddressCountyAnsiCodeCode AS Ieu_PhysicalAddressCountyAnsiCodeCode
	, Ieu.TelephoneNumber AS Ieu_TelephoneNumber
	, Ieu.WebSiteAddress AS Ieu_WebSiteAddress
	, Ieu.OrganizationRegionGeoJson AS Ieu_OrganizationRegionGeoJson
	, Ieu.Latitude AS Ieu_Latitude
	, Ieu.Longitude AS Ieu_Longitude
	, Ieu.RecordStartDateTime AS Ieu_RecordStartDateTime
	, Ieu.RecordEndDateTime AS Ieu_RecordEndDateTime
	, Lea.IeuOrganizationName AS Lea_IeuOrganizationName
	, Lea.IeuOrganizationIdentifierSea AS Lea_IeuOrganizationIdentifierSea
	, Lea.StateAnsiCode AS Lea_StateAnsiCode
	, Lea.StateAbbreviationCode AS Lea_StateAbbreviationCode
	, Lea.StateAbbreviationDescription AS Lea_StateAbbreviationDescription
	, Lea.SeaOrganizationName AS Lea_SeaOrganizationName
	, Lea.SeaOrganizationIdentifierSea AS Lea_SeaOrganizationIdentifierSea
	, Lea.LeaOrganizationName AS Lea_LeaOrganizationName
	, Lea.LeaIdentifierNces AS Lea_LeaIdentifierNces
	, Lea.LeaIdentifierSea AS Lea_LeaIdentifierSea
	, Lea.PriorLeaIdentifierSea AS Lea_PriorLeaIdentifierSea
	, Lea.LeaSupervisoryUnionIdentificationNumber AS Lea_LeaSupervisoryUnionIdentificationNumber
	, Lea.ReportedFederally AS Lea_ReportedFederally
	, Lea.LeaTypeCode AS Lea_LeaTypeCode
	, Lea.LeaTypeDescription AS Lea_LeaTypeDescription
	, Lea.LeaTypeEdFactsCode AS Lea_LeaTypeEdFactsCode
	, Lea.MailingAddressStreetNumberAndName AS Lea_MailingAddressStreetNumberAndName
	, Lea.MailingAddressApartmentRoomOrSuiteNumber AS Lea_MailingAddressApartmentRoomOrSuiteNumber
	, Lea.MailingAddressCity AS Lea_MailingAddressCity
	, Lea.MailingAddressPostalCode AS Lea_MailingAddressPostalCode
	, Lea.MailingAddressStateAbbreviation AS Lea_MailingAddressStateAbbreviation
	, Lea.MailingAddressCountyAnsiCodeCode AS Lea_MailingAddressCountyAnsiCodeCode
	, Lea.PhysicalAddressStreetNumberAndName AS Lea_PhysicalAddressStreetNumberAndName
	, Lea.PhysicalAddressApartmentRoomOrSuiteNumber AS Lea_PhysicalAddressApartmentRoomOrSuiteNumber
	, Lea.PhysicalAddressCity AS Lea_PhysicalAddressCity
	, Lea.PhysicalAddressPostalCode AS Lea_PhysicalAddressPostalCode
	, Lea.PhysicalAddressStateAbbreviation AS Lea_PhysicalAddressStateAbbreviation
	, Lea.PhysicalAddressCountyAnsiCodeCode AS Lea_PhysicalAddressCountyAnsiCodeCode
	, Lea.Longitude AS Lea_Longitude
	, Lea.Latitude AS Lea_Latitude
	, Lea.TelephoneNumber AS Lea_TelephoneNumber
	, Lea.WebSiteAddress AS Lea_WebSiteAddress
	, Lea.OutOfStateIndicator AS Lea_OutOfStateIndicator
	, Lea.LeaOperationalStatus AS Lea_LeaOperationalStatus
	, Lea.LeaOperationalStatusEdFactsCode AS Lea_LeaOperationalStatusEdFactsCode
	, Lea.OperationalStatusEffectiveDate AS Lea_OperationalStatusEffectiveDate
	, Lea.CharterLeaStatus AS Lea_CharterLeaStatus
	, Lea.ReconstitutedStatus AS Lea_ReconstitutedStatus
	, Lea.McKinneyVentoSubgrantRecipient AS Lea_McKinneyVentoSubgrantRecipient
	, Lea.NameOfInstitution AS Lea_NameOfInstitution
	, Lea.RecordStartDateTime AS Lea_RecordStartDateTime
	, Lea.RecordEndDateTime AS Lea_RecordEndDateTime
	, K12School.LeaOrganizationName AS K12School_LeaOrganizationName
	, K12School.LeaIdentifierNces AS K12School_LeaIdentifierNces
	, K12School.LeaIdentifierSea AS K12School_LeaIdentifierSea
	, K12School.NameOfInstitution AS K12School_NameOfInstitution
	, K12School.SchoolIdentifierNces AS K12School_SchoolIdentifierNces
	, K12School.SchoolIdentifierSea AS K12School_SchoolIdentifierSea
	, K12School.SeaOrganizationName AS K12School_SeaOrganizationName
	, K12School.SeaOrganizationIdentifierSea AS K12School_SeaOrganizationIdentifierSea
	, K12School.StateAnsiCode AS K12School_StateAnsiCode
	, K12School.StateAbbreviationCode AS K12School_StateAbbreviationCode
	, K12School.StateAbbreviationDescription AS K12School_StateAbbreviationDescription
	, K12School.PriorLeaIdentifierSea AS K12School_PriorLeaIdentifierSea
	, K12School.PriorSchoolIdentifierSea AS K12School_PriorSchoolIdentifierSea
	, K12School.CharterSchoolIndicator AS K12School_CharterSchoolIndicator
	, K12School.CharterSchoolContractIdNumber AS K12School_CharterSchoolContractIdNumber
	, K12School.CharterSchoolContractApprovalDate AS K12School_CharterSchoolContractApprovalDate
	, K12School.CharterSchoolContractRenewalDate AS K12School_CharterSchoolContractRenewalDate
	, K12School.ReportedFederally AS K12School_ReportedFederally
	, K12School.LeaTypeCode AS K12School_LeaTypeCode
	, K12School.LeaTypeDescription AS K12School_LeaTypeDescription
	, K12School.LeaTypeEdFactsCode AS K12School_LeaTypeEdFactsCode
	, K12School.SchoolTypeCode AS K12School_SchoolTypeCode
	, K12School.SchoolTypeDescription AS K12School_SchoolTypeDescription
	, K12School.SchoolTypeEdFactsCode AS K12School_SchoolTypeEdFactsCode
	, K12School.MailingAddressCity AS K12School_MailingAddressCity
	, K12School.MailingAddressPostalCode AS K12School_MailingAddressPostalCode
	, K12School.MailingAddressStateAbbreviation AS K12School_MailingAddressStateAbbreviation
	, K12School.MailingAddressStreetNumberAndName AS K12School_MailingAddressStreetNumberAndName
	, K12School.PhysicalAddressCity AS K12School_PhysicalAddressCity
	, K12School.PhysicalAddressPostalCode AS K12School_PhysicalAddressPostalCode
	, K12School.PhysicalAddressStateAbbreviation AS K12School_PhysicalAddressStateAbbreviation
	, K12School.PhysicalAddressStreetNumberAndName AS K12School_PhysicalAddressStreetNumberAndName
	, K12School.TelephoneNumber AS K12School_TelephoneNumber
	, K12School.WebSiteAddress AS K12School_WebSiteAddress
	, K12School.OutOfStateIndicator AS K12School_OutOfStateIndicator
	, K12School.RecordStartDateTime AS K12School_RecordStartDateTime
	, K12School.RecordEndDateTime AS K12School_RecordEndDateTime
	, K12School.SchoolOperationalStatus AS K12School_SchoolOperationalStatus
	, K12School.SchoolOperationalStatusEdFactsCode AS K12School_SchoolOperationalStatusEdFactsCode
	, K12School.CharterSchoolStatus AS K12School_CharterSchoolStatus
	, K12School.ReconstitutedStatus AS K12School_ReconstitutedStatus
	, K12School.MailingAddressApartmentRoomOrSuiteNumber AS K12School_MailingAddressApartmentRoomOrSuiteNumber
	, K12School.PhysicalAddressApartmentRoomOrSuiteNumber AS K12School_PhysicalAddressApartmentRoomOrSuiteNumber
	, K12School.IeuOrganizationName AS K12School_IeuOrganizationName
	, K12School.IeuOrganizationIdentifierSea AS K12School_IeuOrganizationIdentifierSea
	, K12School.MailingAddressCountyAnsiCodeCode AS K12School_MailingAddressCountyAnsiCodeCode
	, K12School.PhysicalAddressCountyAnsiCodeCode AS K12School_PhysicalAddressCountyAnsiCodeCode
	, K12School.Longitude AS K12School_Longitude
	, K12School.Latitude AS K12School_Latitude
	, K12School.SchoolOperationalStatusEffectiveDate AS K12School_SchoolOperationalStatusEffectiveDate
	, K12School.AdministrativeFundingControlCode AS K12School_AdministrativeFundingControlCode
	, K12School.AdministrativeFundingControlDescription AS K12School_AdministrativeFundingControlDescription
	, Person.FirstName AS Person_FirstName
	, Person.MiddleName AS Person_MiddleName
	, Person.LastOrSurname AS Person_LastOrSurname
	, Person.BirthDate AS Person_BirthDate
	, Person.ELChildChildIdentifierState AS Person_ELChildChildIdentifierState
	, Person.K12StudentStudentIdentifierState AS Person_K12StudentStudentIdentifierState
	, Person.K12StudentStudentIdentifierDistrict AS Person_K12StudentStudentIdentifierDistrict
	, Person.K12StudentStudentIdentifierNationalMigrant AS Person_K12StudentStudentIdentifierNationalMigrant
	, Person.PsStudentStudentIdentifierState AS Person_PsStudentStudentIdentifierState
	, Person.AeStudentStudentIdentifierState AS Person_AeStudentStudentIdentifierState
	, Person.WorkforceProgramParticipantPersonIdentifierState AS Person_WorkforceProgramParticipantPersonIdentifierState
	, Person.ELStaffStaffMemberIdentifierState AS Person_ELStaffStaffMemberIdentifierState
	, Person.K12StaffStaffMemberIdentifierState AS Person_K12StaffStaffMemberIdentifierState
	, Person.K12StaffStaffMemberIdentifierDistrict AS Person_K12StaffStaffMemberIdentifierDistrict
	, Person.PsStaffStaffMemberIdentifierState AS Person_PsStaffStaffMemberIdentifierState
	, Person.PersonIdentifierDriversLicense AS Person_PersonIdentifierDriversLicense
	, Person.IsActiveELChild AS Person_IsActiveELChild
	, Person.IsActiveK12Student AS Person_IsActiveK12Student
	, Person.IsActivePsStudent AS Person_IsActivePsStudent
	, Person.IsActiveAeStudent AS Person_IsActiveAeStudent
	, Person.IsActiveWorkforceProgramParticipant AS Person_IsActiveWorkforceProgramParticipant
	, Person.IsActiveELStaff AS Person_IsActiveELStaff
	, Person.IsActiveK12Staff AS Person_IsActiveK12Staff
	, Person.IsActivePsStaff AS Person_IsActivePsStaff
	, Person.RecordStartDateTime AS Person_RecordStartDateTime
	, Person.RecordEndDateTime AS Person_RecordEndDateTime
	, Person.ElectronicMailAddressHome AS Person_ElectronicMailAddressHome
	, Person.ElectronicMailAddressOrganizational AS Person_ElectronicMailAddressOrganizational
	, Person.ElectronicMailAddressWork AS Person_ElectronicMailAddressWork
	, Person.TelephoneNumberFax AS Person_TelephoneNumberFax
	, Person.TelephoneNumberHome AS Person_TelephoneNumberHome
	, Person.TelephoneNumberMobile AS Person_TelephoneNumberMobile
	, Person.TelephoneNumberWork AS Person_TelephoneNumberWork
	, Person.PersonalTitleOrPrefix AS Person_PersonalTitleOrPrefix
	, Person.PositionTitle AS Person_PositionTitle
	, Attendance.AbsenteeismCode AS Attendance_AbsenteeismCode
	, Attendance.AbsenteeismDescription AS Attendance_AbsenteeismDescription
	, Attendance.AbsenteeismEdFactsCode AS Attendance_AbsenteeismEdFactsCode
	, fact.AttendanceEventDurationDay
	, fact.AttendanceEventDurationMinutes
	, fact.AttendanceEventDurationHours
FROM RDS.FactK12StudentDailyAttendances fact
JOIN RDS.DimSchoolYears SchoolYear
	ON Fact.SchoolYearId = SchoolYear.DimSchoolYearId
JOIN RDS.DimDates AttendanceEventDate
	ON Fact.AttendanceEventDateId = AttendanceEventDate.DimDateId
JOIN RDS.DimDataCollections DataCollection
	ON Fact.DataCollectionId = DataCollection.DimDataCollectionId
JOIN RDS.DimSeas Sea
	ON Fact.SeaId = Sea.DimSeaId
JOIN RDS.DimIeus Ieu
	ON Fact.IeuId = Ieu.DimIeuId
JOIN RDS.DimLeas Lea
	ON Fact.LeaId = Lea.DimLeaID
JOIN RDS.DimK12Schools K12School
	ON Fact.K12SchoolId = K12School.DimK12SchoolId
JOIN RDS.DimPeople Person
	ON Fact.PersonId = Person.DimPersonId
JOIN RDS.DimAttendances Attendance
	ON Fact.AttendanceId = Attendance.DimAttendanceId
