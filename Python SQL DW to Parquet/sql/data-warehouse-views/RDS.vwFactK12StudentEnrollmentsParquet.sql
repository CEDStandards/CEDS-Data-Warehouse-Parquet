CREATE OR ALTER VIEW [RDS].[vwFactK12StudentEnrollmentsParquet] AS
	SELECT fact.FactK12StudentEnrollmentId
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
	, Ieu.StateAnsiCode AS Ieu_StateAnsiCode
	, Ieu.StateAbbreviationCode AS Ieu_StateAbbreviationCode
	, Ieu.StateAbbreviationDescription AS Ieu_StateAbbreviationDescription
	, Ieu.MailingAddressStreetNumberAndName AS Ieu_MailingAddressStreetNumberAndName
	, Ieu.MailingAddressApartmentRoomOrSuiteNumber AS Ieu_MailingAddressApartmentRoomOrSuiteNumber
	, Ieu.MailingAddressCity AS Ieu_MailingAddressCity
	, Ieu.MailingAddressStateAbbreviation AS Ieu_MailingAddressStateAbbreviation
	, Ieu.MailingAddressPostalCode AS Ieu_MailingAddressPostalCode
	, Ieu.MailingAddressCountyAnsiCodeCode AS Ieu_MailingAddressCountyAnsiCodeCode
	, Ieu.MailingAddressCountyName AS Ieu_MailingAddressCountyName
	, Ieu.OutOfStateIndicator AS Ieu_OutOfStateIndicator
	, Ieu.OrganizationOperationalStatus AS Ieu_OrganizationOperationalStatus
	, Ieu.OperationalStatusEffectiveDate AS Ieu_OperationalStatusEffectiveDate
	, Ieu.PhysicalAddressStreetNumberAndName AS Ieu_PhysicalAddressStreetNumberAndName
	, Ieu.PhysicalAddressApartmentRoomOrSuiteNumber AS Ieu_PhysicalAddressApartmentRoomOrSuiteNumber
	, Ieu.PhysicalAddressCity AS Ieu_PhysicalAddressCity
	, Ieu.PhysicalAddressPostalCode AS Ieu_PhysicalAddressPostalCode
	, Ieu.PhysicalAddressStateAbbreviation AS Ieu_PhysicalAddressStateAbbreviation
	, Ieu.PhysicalAddressCountyAnsiCodeCode AS Ieu_PhysicalAddressCountyAnsiCodeCode
	, Ieu.PhysicalAddressCountyName AS Ieu_PhysicalAddressCountyName
	, Ieu.TelephoneNumber AS Ieu_TelephoneNumber
	, Ieu.WebSiteAddress AS Ieu_WebSiteAddress
	, Ieu.OrganizationRegionGeoJson AS Ieu_OrganizationRegionGeoJson
	, Ieu.Latitude AS Ieu_Latitude
	, Ieu.Longitude AS Ieu_Longitude
	, Ieu.RecordStartDateTime AS Ieu_RecordStartDateTime
	, Ieu.RecordEndDateTime AS Ieu_RecordEndDateTime
	, K12Student.FirstName AS K12Student_FirstName
	, K12Student.MiddleName AS K12Student_MiddleName
	, K12Student.LastOrSurname AS K12Student_LastOrSurname
	, K12Student.Birthdate AS K12Student_Birthdate
	, K12Student.ELChildChildIdentifierState AS K12Student_ELChildChildIdentifierState
	, K12Student.K12StudentStudentIdentifierState AS K12Student_K12StudentStudentIdentifierState
	, K12Student.K12StudentStudentIdentifierDistrict AS K12Student_K12StudentStudentIdentifierDistrict
	, K12Student.K12StudentStudentIdentifierNationalMigrant AS K12Student_K12StudentStudentIdentifierNationalMigrant
	, K12Student.PsStudentStudentIdentifierState AS K12Student_PsStudentStudentIdentifierState
	, K12Student.AeStudentStudentIdentifierState AS K12Student_AeStudentStudentIdentifierState
	, K12Student.WorkforceProgramParticipantPersonIdentifierState AS K12Student_WorkforceProgramParticipantPersonIdentifierState
	, K12Student.ELStaffStaffMemberIdentifierState AS K12Student_ELStaffStaffMemberIdentifierState
	, K12Student.K12StaffStaffMemberIdentifierState AS K12Student_K12StaffStaffMemberIdentifierState
	, K12Student.K12StaffStaffMemberIdentifierDistrict AS K12Student_K12StaffStaffMemberIdentifierDistrict
	, K12Student.PsStaffStaffMemberIdentifierState AS K12Student_PsStaffStaffMemberIdentifierState
	, K12Student.PersonIdentifierDriversLicense AS K12Student_PersonIdentifierDriversLicense
	, K12Student.PersonIdentifierSSN AS K12Student_PersonIdentifierSSN
	, K12Student.PersonIdentifierState AS K12Student_PersonIdentifierState
	, K12Student.StudentIdentifierState AS K12Student_StudentIdentifierState
	, K12Student.IsActiveELChild AS K12Student_IsActiveELChild
	, K12Student.IsActiveK12Student AS K12Student_IsActiveK12Student
	, K12Student.IsActivePsStudent AS K12Student_IsActivePsStudent
	, K12Student.IsActiveAeStudent AS K12Student_IsActiveAeStudent
	, K12Student.IsActiveWorkforceProgramParticipant AS K12Student_IsActiveWorkforceProgramParticipant
	, K12Student.IsActiveELStaff AS K12Student_IsActiveELStaff
	, K12Student.IsActiveK12Staff AS K12Student_IsActiveK12Staff
	, K12Student.IsActivePsStaff AS K12Student_IsActivePsStaff
	, K12Student.RecordStartDateTime AS K12Student_RecordStartDateTime
	, K12Student.RecordEndDateTime AS K12Student_RecordEndDateTime
	, K12Student.ElectronicMailAddressHome AS K12Student_ElectronicMailAddressHome
	, K12Student.ElectronicMailAddressOrganizational AS K12Student_ElectronicMailAddressOrganizational
	, K12Student.ElectronicMailAddressWork AS K12Student_ElectronicMailAddressWork
	, K12Student.TelephoneNumberFax AS K12Student_TelephoneNumberFax
	, K12Student.TelephoneNumberHome AS K12Student_TelephoneNumberHome
	, K12Student.TelephoneNumberMobile AS K12Student_TelephoneNumberMobile
	, K12Student.TelephoneNumberWork AS K12Student_TelephoneNumberWork
	, K12Student.PersonalTitleOrPrefix AS K12Student_PersonalTitleOrPrefix
	, K12Student.PositionTitle AS K12Student_PositionTitle
	, K12Student.GenerationCodeOrSuffix AS K12Student_GenerationCodeOrSuffix
	, K12Student.HighestLevelOfEducationCompletedCode AS K12Student_HighestLevelOfEducationCompletedCode
	, K12Student.HighestLevelOfEducationCompletedDescription AS K12Student_HighestLevelOfEducationCompletedDescription
	, K12Student_Current.FirstName AS K12Student_Current_FirstName
	, K12Student_Current.MiddleName AS K12Student_Current_MiddleName
	, K12Student_Current.LastOrSurname AS K12Student_Current_LastOrSurname
	, K12Student_Current.Birthdate AS K12Student_Current_Birthdate
	, K12Student_Current.ELChildChildIdentifierState AS K12Student_Current_ELChildChildIdentifierState
	, K12Student_Current.K12StudentStudentIdentifierState AS K12Student_Current_K12StudentStudentIdentifierState
	, K12Student_Current.K12StudentStudentIdentifierDistrict AS K12Student_Current_K12StudentStudentIdentifierDistrict
	, K12Student_Current.K12StudentStudentIdentifierNationalMigrant AS K12Student_Current_K12StudentStudentIdentifierNationalMigrant
	, K12Student_Current.PsStudentStudentIdentifierState AS K12Student_Current_PsStudentStudentIdentifierState
	, K12Student_Current.AeStudentStudentIdentifierState AS K12Student_Current_AeStudentStudentIdentifierState
	, K12Student_Current.WorkforceProgramParticipantPersonIdentifierState AS K12Student_Current_WorkforceProgramParticipantPersonIdentifierState
	, K12Student_Current.ELStaffStaffMemberIdentifierState AS K12Student_Current_ELStaffStaffMemberIdentifierState
	, K12Student_Current.K12StaffStaffMemberIdentifierState AS K12Student_Current_K12StaffStaffMemberIdentifierState
	, K12Student_Current.K12StaffStaffMemberIdentifierDistrict AS K12Student_Current_K12StaffStaffMemberIdentifierDistrict
	, K12Student_Current.PsStaffStaffMemberIdentifierState AS K12Student_Current_PsStaffStaffMemberIdentifierState
	, K12Student_Current.PersonIdentifierDriversLicense AS K12Student_Current_PersonIdentifierDriversLicense
	, K12Student_Current.PersonIdentifierSSN AS K12Student_Current_PersonIdentifierSSN
	, K12Student_Current.PersonIdentifierState AS K12Student_Current_PersonIdentifierState
	, K12Student_Current.StudentIdentifierState AS K12Student_Current_StudentIdentifierState
	, K12Student_Current.IsActiveELChild AS K12Student_Current_IsActiveELChild
	, K12Student_Current.IsActiveK12Student AS K12Student_Current_IsActiveK12Student
	, K12Student_Current.IsActivePsStudent AS K12Student_Current_IsActivePsStudent
	, K12Student_Current.IsActiveAeStudent AS K12Student_Current_IsActiveAeStudent
	, K12Student_Current.IsActiveWorkforceProgramParticipant AS K12Student_Current_IsActiveWorkforceProgramParticipant
	, K12Student_Current.IsActiveELStaff AS K12Student_Current_IsActiveELStaff
	, K12Student_Current.IsActiveK12Staff AS K12Student_Current_IsActiveK12Staff
	, K12Student_Current.IsActivePsStaff AS K12Student_Current_IsActivePsStaff
	, K12Student_Current.ElectronicMailAddressHome AS K12Student_Current_ElectronicMailAddressHome
	, K12Student_Current.ElectronicMailAddressOrganizational AS K12Student_Current_ElectronicMailAddressOrganizational
	, K12Student_Current.ElectronicMailAddressWork AS K12Student_Current_ElectronicMailAddressWork
	, K12Student_Current.TelephoneNumberFax AS K12Student_Current_TelephoneNumberFax
	, K12Student_Current.TelephoneNumberHome AS K12Student_Current_TelephoneNumberHome
	, K12Student_Current.TelephoneNumberMobile AS K12Student_Current_TelephoneNumberMobile
	, K12Student_Current.TelephoneNumberWork AS K12Student_Current_TelephoneNumberWork
	, K12Student_Current.PersonalTitleOrPrefix AS K12Student_Current_PersonalTitleOrPrefix
	, K12Student_Current.PositionTitle AS K12Student_Current_PositionTitle
	, K12Student_Current.GenerationCodeOrSuffix AS K12Student_Current_GenerationCodeOrSuffix
	, K12Student_Current.HighestLevelOfEducationCompletedCode AS K12Student_Current_HighestLevelOfEducationCompletedCode
	, K12Student_Current.HighestLevelOfEducationCompletedDescription AS K12Student_Current_HighestLevelOfEducationCompletedDescription
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
	, LeaAccountability.ReportedFederally AS LeaAccountability_ReportedFederally
	, LeaAccountability.LeaTypeCode AS LeaAccountability_LeaTypeCode
	, LeaAccountability.LeaTypeDescription AS LeaAccountability_LeaTypeDescription
	, LeaAccountability.LeaTypeEdFactsCode AS LeaAccountability_LeaTypeEdFactsCode
	, LeaAccountability.MailingAddressStreetNumberAndName AS LeaAccountability_MailingAddressStreetNumberAndName
	, LeaAccountability.MailingAddressApartmentRoomOrSuiteNumber AS LeaAccountability_MailingAddressApartmentRoomOrSuiteNumber
	, LeaAccountability.MailingAddressCity AS LeaAccountability_MailingAddressCity
	, LeaAccountability.MailingAddressPostalCode AS LeaAccountability_MailingAddressPostalCode
	, LeaAccountability.MailingAddressStateAbbreviation AS LeaAccountability_MailingAddressStateAbbreviation
	, LeaAccountability.MailingAddressCountyName AS LeaAccountability_MailingAddressCountyName
	, LeaAccountability.PhysicalAddressStreetNumberAndName AS LeaAccountability_PhysicalAddressStreetNumberAndName
	, LeaAccountability.PhysicalAddressApartmentRoomOrSuiteNumber AS LeaAccountability_PhysicalAddressApartmentRoomOrSuiteNumber
	, LeaAccountability.PhysicalAddressCity AS LeaAccountability_PhysicalAddressCity
	, LeaAccountability.PhysicalAddressPostalCode AS LeaAccountability_PhysicalAddressPostalCode
	, LeaAccountability.PhysicalAddressStateAbbreviation AS LeaAccountability_PhysicalAddressStateAbbreviation
	, LeaAccountability.PhysicalAddressCountyName AS LeaAccountability_PhysicalAddressCountyName
	, LeaAccountability.Longitude AS LeaAccountability_Longitude
	, LeaAccountability.Latitude AS LeaAccountability_Latitude
	, LeaAccountability.TelephoneNumber AS LeaAccountability_TelephoneNumber
	, LeaAccountability.WebSiteAddress AS LeaAccountability_WebSiteAddress
	, LeaAccountability.OutOfStateIndicator AS LeaAccountability_OutOfStateIndicator
	, LeaAccountability.LeaOperationalStatus AS LeaAccountability_LeaOperationalStatus
	, LeaAccountability.LeaOperationalStatusEdFactsCode AS LeaAccountability_LeaOperationalStatusEdFactsCode
	, LeaAccountability.OperationalStatusEffectiveDate AS LeaAccountability_OperationalStatusEffectiveDate
	, LeaAccountability.CharterLeaStatus AS LeaAccountability_CharterLeaStatus
	, LeaAccountability.ReconstitutedStatus AS LeaAccountability_ReconstitutedStatus
	, LeaAccountability.McKinneyVentoSubgrantRecipient AS LeaAccountability_McKinneyVentoSubgrantRecipient
	, LeaAccountability.RecordStartDateTime AS LeaAccountability_RecordStartDateTime
	, LeaAccountability.RecordEndDateTime AS LeaAccountability_RecordEndDateTime
	, LeaAttendance.IeuOrganizationName AS LeaAttendance_IeuOrganizationName
	, LeaAttendance.IeuOrganizationIdentifierSea AS LeaAttendance_IeuOrganizationIdentifierSea
	, LeaAttendance.StateAnsiCode AS LeaAttendance_StateAnsiCode
	, LeaAttendance.StateAbbreviationCode AS LeaAttendance_StateAbbreviationCode
	, LeaAttendance.StateAbbreviationDescription AS LeaAttendance_StateAbbreviationDescription
	, LeaAttendance.SeaOrganizationName AS LeaAttendance_SeaOrganizationName
	, LeaAttendance.SeaOrganizationIdentifierSea AS LeaAttendance_SeaOrganizationIdentifierSea
	, LeaAttendance.LeaOrganizationName AS LeaAttendance_LeaOrganizationName
	, LeaAttendance.LeaIdentifierNces AS LeaAttendance_LeaIdentifierNces
	, LeaAttendance.LeaIdentifierSea AS LeaAttendance_LeaIdentifierSea
	, LeaAttendance.PriorLeaIdentifierSea AS LeaAttendance_PriorLeaIdentifierSea
	, LeaAttendance.ReportedFederally AS LeaAttendance_ReportedFederally
	, LeaAttendance.LeaTypeCode AS LeaAttendance_LeaTypeCode
	, LeaAttendance.LeaTypeDescription AS LeaAttendance_LeaTypeDescription
	, LeaAttendance.LeaTypeEdFactsCode AS LeaAttendance_LeaTypeEdFactsCode
	, LeaAttendance.MailingAddressStreetNumberAndName AS LeaAttendance_MailingAddressStreetNumberAndName
	, LeaAttendance.MailingAddressApartmentRoomOrSuiteNumber AS LeaAttendance_MailingAddressApartmentRoomOrSuiteNumber
	, LeaAttendance.MailingAddressCity AS LeaAttendance_MailingAddressCity
	, LeaAttendance.MailingAddressPostalCode AS LeaAttendance_MailingAddressPostalCode
	, LeaAttendance.MailingAddressStateAbbreviation AS LeaAttendance_MailingAddressStateAbbreviation
	, LeaAttendance.MailingAddressCountyName AS LeaAttendance_MailingAddressCountyName
	, LeaAttendance.PhysicalAddressStreetNumberAndName AS LeaAttendance_PhysicalAddressStreetNumberAndName
	, LeaAttendance.PhysicalAddressApartmentRoomOrSuiteNumber AS LeaAttendance_PhysicalAddressApartmentRoomOrSuiteNumber
	, LeaAttendance.PhysicalAddressCity AS LeaAttendance_PhysicalAddressCity
	, LeaAttendance.PhysicalAddressPostalCode AS LeaAttendance_PhysicalAddressPostalCode
	, LeaAttendance.PhysicalAddressStateAbbreviation AS LeaAttendance_PhysicalAddressStateAbbreviation
	, LeaAttendance.PhysicalAddressCountyName AS LeaAttendance_PhysicalAddressCountyName
	, LeaAttendance.Longitude AS LeaAttendance_Longitude
	, LeaAttendance.Latitude AS LeaAttendance_Latitude
	, LeaAttendance.TelephoneNumber AS LeaAttendance_TelephoneNumber
	, LeaAttendance.WebSiteAddress AS LeaAttendance_WebSiteAddress
	, LeaAttendance.OutOfStateIndicator AS LeaAttendance_OutOfStateIndicator
	, LeaAttendance.LeaOperationalStatus AS LeaAttendance_LeaOperationalStatus
	, LeaAttendance.LeaOperationalStatusEdFactsCode AS LeaAttendance_LeaOperationalStatusEdFactsCode
	, LeaAttendance.OperationalStatusEffectiveDate AS LeaAttendance_OperationalStatusEffectiveDate
	, LeaAttendance.CharterLeaStatus AS LeaAttendance_CharterLeaStatus
	, LeaAttendance.ReconstitutedStatus AS LeaAttendance_ReconstitutedStatus
	, LeaAttendance.McKinneyVentoSubgrantRecipient AS LeaAttendance_McKinneyVentoSubgrantRecipient
	, LeaAttendance.RecordStartDateTime AS LeaAttendance_RecordStartDateTime
	, LeaAttendance.RecordEndDateTime AS LeaAttendance_RecordEndDateTime
	, LeaFunding.IeuOrganizationName AS LeaFunding_IeuOrganizationName
	, LeaFunding.IeuOrganizationIdentifierSea AS LeaFunding_IeuOrganizationIdentifierSea
	, LeaFunding.StateAnsiCode AS LeaFunding_StateAnsiCode
	, LeaFunding.StateAbbreviationCode AS LeaFunding_StateAbbreviationCode
	, LeaFunding.StateAbbreviationDescription AS LeaFunding_StateAbbreviationDescription
	, LeaFunding.SeaOrganizationName AS LeaFunding_SeaOrganizationName
	, LeaFunding.SeaOrganizationIdentifierSea AS LeaFunding_SeaOrganizationIdentifierSea
	, LeaFunding.LeaOrganizationName AS LeaFunding_LeaOrganizationName
	, LeaFunding.LeaIdentifierNces AS LeaFunding_LeaIdentifierNces
	, LeaFunding.LeaIdentifierSea AS LeaFunding_LeaIdentifierSea
	, LeaFunding.PriorLeaIdentifierSea AS LeaFunding_PriorLeaIdentifierSea
	, LeaFunding.ReportedFederally AS LeaFunding_ReportedFederally
	, LeaFunding.LeaTypeCode AS LeaFunding_LeaTypeCode
	, LeaFunding.LeaTypeDescription AS LeaFunding_LeaTypeDescription
	, LeaFunding.LeaTypeEdFactsCode AS LeaFunding_LeaTypeEdFactsCode
	, LeaFunding.MailingAddressStreetNumberAndName AS LeaFunding_MailingAddressStreetNumberAndName
	, LeaFunding.MailingAddressApartmentRoomOrSuiteNumber AS LeaFunding_MailingAddressApartmentRoomOrSuiteNumber
	, LeaFunding.MailingAddressCity AS LeaFunding_MailingAddressCity
	, LeaFunding.MailingAddressPostalCode AS LeaFunding_MailingAddressPostalCode
	, LeaFunding.MailingAddressStateAbbreviation AS LeaFunding_MailingAddressStateAbbreviation
	, LeaFunding.MailingAddressCountyName AS LeaFunding_MailingAddressCountyName
	, LeaFunding.PhysicalAddressStreetNumberAndName AS LeaFunding_PhysicalAddressStreetNumberAndName
	, LeaFunding.PhysicalAddressApartmentRoomOrSuiteNumber AS LeaFunding_PhysicalAddressApartmentRoomOrSuiteNumber
	, LeaFunding.PhysicalAddressCity AS LeaFunding_PhysicalAddressCity
	, LeaFunding.PhysicalAddressPostalCode AS LeaFunding_PhysicalAddressPostalCode
	, LeaFunding.PhysicalAddressStateAbbreviation AS LeaFunding_PhysicalAddressStateAbbreviation
	, LeaFunding.PhysicalAddressCountyName AS LeaFunding_PhysicalAddressCountyName
	, LeaFunding.Longitude AS LeaFunding_Longitude
	, LeaFunding.Latitude AS LeaFunding_Latitude
	, LeaFunding.TelephoneNumber AS LeaFunding_TelephoneNumber
	, LeaFunding.WebSiteAddress AS LeaFunding_WebSiteAddress
	, LeaFunding.OutOfStateIndicator AS LeaFunding_OutOfStateIndicator
	, LeaFunding.LeaOperationalStatus AS LeaFunding_LeaOperationalStatus
	, LeaFunding.LeaOperationalStatusEdFactsCode AS LeaFunding_LeaOperationalStatusEdFactsCode
	, LeaFunding.OperationalStatusEffectiveDate AS LeaFunding_OperationalStatusEffectiveDate
	, LeaFunding.CharterLeaStatus AS LeaFunding_CharterLeaStatus
	, LeaFunding.ReconstitutedStatus AS LeaFunding_ReconstitutedStatus
	, LeaFunding.McKinneyVentoSubgrantRecipient AS LeaFunding_McKinneyVentoSubgrantRecipient
	, LeaFunding.RecordStartDateTime AS LeaFunding_RecordStartDateTime
	, LeaFunding.RecordEndDateTime AS LeaFunding_RecordEndDateTime
	, LeaGraduation.IeuOrganizationName AS LeaGraduation_IeuOrganizationName
	, LeaGraduation.IeuOrganizationIdentifierSea AS LeaGraduation_IeuOrganizationIdentifierSea
	, LeaGraduation.StateAnsiCode AS LeaGraduation_StateAnsiCode
	, LeaGraduation.StateAbbreviationCode AS LeaGraduation_StateAbbreviationCode
	, LeaGraduation.StateAbbreviationDescription AS LeaGraduation_StateAbbreviationDescription
	, LeaGraduation.SeaOrganizationName AS LeaGraduation_SeaOrganizationName
	, LeaGraduation.SeaOrganizationIdentifierSea AS LeaGraduation_SeaOrganizationIdentifierSea
	, LeaGraduation.LeaOrganizationName AS LeaGraduation_LeaOrganizationName
	, LeaGraduation.LeaIdentifierNces AS LeaGraduation_LeaIdentifierNces
	, LeaGraduation.LeaIdentifierSea AS LeaGraduation_LeaIdentifierSea
	, LeaGraduation.PriorLeaIdentifierSea AS LeaGraduation_PriorLeaIdentifierSea
	, LeaGraduation.ReportedFederally AS LeaGraduation_ReportedFederally
	, LeaGraduation.LeaTypeCode AS LeaGraduation_LeaTypeCode
	, LeaGraduation.LeaTypeDescription AS LeaGraduation_LeaTypeDescription
	, LeaGraduation.LeaTypeEdFactsCode AS LeaGraduation_LeaTypeEdFactsCode
	, LeaGraduation.MailingAddressStreetNumberAndName AS LeaGraduation_MailingAddressStreetNumberAndName
	, LeaGraduation.MailingAddressApartmentRoomOrSuiteNumber AS LeaGraduation_MailingAddressApartmentRoomOrSuiteNumber
	, LeaGraduation.MailingAddressCity AS LeaGraduation_MailingAddressCity
	, LeaGraduation.MailingAddressPostalCode AS LeaGraduation_MailingAddressPostalCode
	, LeaGraduation.MailingAddressStateAbbreviation AS LeaGraduation_MailingAddressStateAbbreviation
	, LeaGraduation.MailingAddressCountyName AS LeaGraduation_MailingAddressCountyName
	, LeaGraduation.PhysicalAddressStreetNumberAndName AS LeaGraduation_PhysicalAddressStreetNumberAndName
	, LeaGraduation.PhysicalAddressApartmentRoomOrSuiteNumber AS LeaGraduation_PhysicalAddressApartmentRoomOrSuiteNumber
	, LeaGraduation.PhysicalAddressCity AS LeaGraduation_PhysicalAddressCity
	, LeaGraduation.PhysicalAddressPostalCode AS LeaGraduation_PhysicalAddressPostalCode
	, LeaGraduation.PhysicalAddressStateAbbreviation AS LeaGraduation_PhysicalAddressStateAbbreviation
	, LeaGraduation.PhysicalAddressCountyName AS LeaGraduation_PhysicalAddressCountyName
	, LeaGraduation.Longitude AS LeaGraduation_Longitude
	, LeaGraduation.Latitude AS LeaGraduation_Latitude
	, LeaGraduation.TelephoneNumber AS LeaGraduation_TelephoneNumber
	, LeaGraduation.WebSiteAddress AS LeaGraduation_WebSiteAddress
	, LeaGraduation.OutOfStateIndicator AS LeaGraduation_OutOfStateIndicator
	, LeaGraduation.LeaOperationalStatus AS LeaGraduation_LeaOperationalStatus
	, LeaGraduation.LeaOperationalStatusEdFactsCode AS LeaGraduation_LeaOperationalStatusEdFactsCode
	, LeaGraduation.OperationalStatusEffectiveDate AS LeaGraduation_OperationalStatusEffectiveDate
	, LeaGraduation.CharterLeaStatus AS LeaGraduation_CharterLeaStatus
	, LeaGraduation.ReconstitutedStatus AS LeaGraduation_ReconstitutedStatus
	, LeaGraduation.McKinneyVentoSubgrantRecipient AS LeaGraduation_McKinneyVentoSubgrantRecipient
	, LeaGraduation.RecordStartDateTime AS LeaGraduation_RecordStartDateTime
	, LeaGraduation.RecordEndDateTime AS LeaGraduation_RecordEndDateTime
	, LeaIndividualizedEducationProgram.IeuOrganizationName AS LeaIndividualizedEducationProgram_IeuOrganizationName
	, LeaIndividualizedEducationProgram.IeuOrganizationIdentifierSea AS LeaIndividualizedEducationProgram_IeuOrganizationIdentifierSea
	, LeaIndividualizedEducationProgram.StateAnsiCode AS LeaIndividualizedEducationProgram_StateAnsiCode
	, LeaIndividualizedEducationProgram.StateAbbreviationCode AS LeaIndividualizedEducationProgram_StateAbbreviationCode
	, LeaIndividualizedEducationProgram.StateAbbreviationDescription AS LeaIndividualizedEducationProgram_StateAbbreviationDescription
	, LeaIndividualizedEducationProgram.SeaOrganizationName AS LeaIndividualizedEducationProgram_SeaOrganizationName
	, LeaIndividualizedEducationProgram.SeaOrganizationIdentifierSea AS LeaIndividualizedEducationProgram_SeaOrganizationIdentifierSea
	, LeaIndividualizedEducationProgram.LeaOrganizationName AS LeaIndividualizedEducationProgram_LeaOrganizationName
	, LeaIndividualizedEducationProgram.LeaIdentifierNces AS LeaIndividualizedEducationProgram_LeaIdentifierNces
	, LeaIndividualizedEducationProgram.LeaIdentifierSea AS LeaIndividualizedEducationProgram_LeaIdentifierSea
	, LeaIndividualizedEducationProgram.PriorLeaIdentifierSea AS LeaIndividualizedEducationProgram_PriorLeaIdentifierSea
	, LeaIndividualizedEducationProgram.ReportedFederally AS LeaIndividualizedEducationProgram_ReportedFederally
	, LeaIndividualizedEducationProgram.LeaTypeCode AS LeaIndividualizedEducationProgram_LeaTypeCode
	, LeaIndividualizedEducationProgram.LeaTypeDescription AS LeaIndividualizedEducationProgram_LeaTypeDescription
	, LeaIndividualizedEducationProgram.LeaTypeEdFactsCode AS LeaIndividualizedEducationProgram_LeaTypeEdFactsCode
	, LeaIndividualizedEducationProgram.MailingAddressStreetNumberAndName AS LeaIndividualizedEducationProgram_MailingAddressStreetNumberAndName
	, LeaIndividualizedEducationProgram.MailingAddressApartmentRoomOrSuiteNumber AS LeaIndividualizedEducationProgram_MailingAddressApartmentRoomOrSuiteNumber
	, LeaIndividualizedEducationProgram.MailingAddressCity AS LeaIndividualizedEducationProgram_MailingAddressCity
	, LeaIndividualizedEducationProgram.MailingAddressPostalCode AS LeaIndividualizedEducationProgram_MailingAddressPostalCode
	, LeaIndividualizedEducationProgram.MailingAddressStateAbbreviation AS LeaIndividualizedEducationProgram_MailingAddressStateAbbreviation
	, LeaIndividualizedEducationProgram.MailingAddressCountyName AS LeaIndividualizedEducationProgram_MailingAddressCountyName
	, LeaIndividualizedEducationProgram.PhysicalAddressStreetNumberAndName AS LeaIndividualizedEducationProgram_PhysicalAddressStreetNumberAndName
	, LeaIndividualizedEducationProgram.PhysicalAddressApartmentRoomOrSuiteNumber AS LeaIndividualizedEducationProgram_PhysicalAddressApartmentRoomOrSuiteNumber
	, LeaIndividualizedEducationProgram.PhysicalAddressCity AS LeaIndividualizedEducationProgram_PhysicalAddressCity
	, LeaIndividualizedEducationProgram.PhysicalAddressPostalCode AS LeaIndividualizedEducationProgram_PhysicalAddressPostalCode
	, LeaIndividualizedEducationProgram.PhysicalAddressStateAbbreviation AS LeaIndividualizedEducationProgram_PhysicalAddressStateAbbreviation
	, LeaIndividualizedEducationProgram.PhysicalAddressCountyName AS LeaIndividualizedEducationProgram_PhysicalAddressCountyName
	, LeaIndividualizedEducationProgram.Longitude AS LeaIndividualizedEducationProgram_Longitude
	, LeaIndividualizedEducationProgram.Latitude AS LeaIndividualizedEducationProgram_Latitude
	, LeaIndividualizedEducationProgram.TelephoneNumber AS LeaIndividualizedEducationProgram_TelephoneNumber
	, LeaIndividualizedEducationProgram.WebSiteAddress AS LeaIndividualizedEducationProgram_WebSiteAddress
	, LeaIndividualizedEducationProgram.OutOfStateIndicator AS LeaIndividualizedEducationProgram_OutOfStateIndicator
	, LeaIndividualizedEducationProgram.LeaOperationalStatus AS LeaIndividualizedEducationProgram_LeaOperationalStatus
	, LeaIndividualizedEducationProgram.LeaOperationalStatusEdFactsCode AS LeaIndividualizedEducationProgram_LeaOperationalStatusEdFactsCode
	, LeaIndividualizedEducationProgram.OperationalStatusEffectiveDate AS LeaIndividualizedEducationProgram_OperationalStatusEffectiveDate
	, LeaIndividualizedEducationProgram.CharterLeaStatus AS LeaIndividualizedEducationProgram_CharterLeaStatus
	, LeaIndividualizedEducationProgram.ReconstitutedStatus AS LeaIndividualizedEducationProgram_ReconstitutedStatus
	, LeaIndividualizedEducationProgram.McKinneyVentoSubgrantRecipient AS LeaIndividualizedEducationProgram_McKinneyVentoSubgrantRecipient
	, LeaIndividualizedEducationProgram.RecordStartDateTime AS LeaIndividualizedEducationProgram_RecordStartDateTime
	, LeaIndividualizedEducationProgram.RecordEndDateTime AS LeaIndividualizedEducationProgram_RecordEndDateTime
	, K12School.LeaOrganizationName AS K12School_LeaOrganizationName
	, K12School.LeaIdentifierNces AS K12School_LeaIdentifierNces
	, K12School.LeaIdentifierSea AS K12School_LeaIdentifierSea
	, K12School.NameOfInstitution AS K12School_NameOfInstitution
	, K12School.SchoolIdentifierNces AS K12School_SchoolIdentifierNces
	, K12School.SchoolIdentifierSea AS K12School_SchoolIdentifierSea
	, K12School.SchoolIdentifierAct AS K12School_SchoolIdentifierAct
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
	, K12School.MailingAddressCountyName AS K12School_MailingAddressCountyName
	, K12School.PhysicalAddressCountyAnsiCodeCode AS K12School_PhysicalAddressCountyAnsiCodeCode
	, K12School.PhysicalAddressCountyName AS K12School_PhysicalAddressCountyName
	, K12School.Longitude AS K12School_Longitude
	, K12School.Latitude AS K12School_Latitude
	, K12School.SchoolOperationalStatusEffectiveDate AS K12School_SchoolOperationalStatusEffectiveDate
	, K12School.AdministrativeFundingControlCode AS K12School_AdministrativeFundingControlCode
	, K12School.AdministrativeFundingControlDescription AS K12School_AdministrativeFundingControlDescription
	, EducationOrganizationNetwork.OrganizationIdentifierSea AS EducationOrganizationNetwork_OrganizationIdentifierSea
	, EducationOrganizationNetwork.OrganizationTypeCode AS EducationOrganizationNetwork_OrganizationTypeCode
	, EducationOrganizationNetwork.OrganizationTypeDescription AS EducationOrganizationNetwork_OrganizationTypeDescription
	, EducationOrganizationNetwork.OrganizationName AS EducationOrganizationNetwork_OrganizationName
	, EducationOrganizationNetwork.RecordStartDateTime AS EducationOrganizationNetwork_RecordStartDateTime
	, EducationOrganizationNetwork.RecordEndDateTime AS EducationOrganizationNetwork_RecordEndDateTime
	, CohortGraduationYear.SchoolYear AS CohortGraduationYear_SchoolYear
	, CohortGraduationYear.SessionBeginDate AS CohortGraduationYear_SessionBeginDate
	, CohortGraduationYear.SessionEndDate AS CohortGraduationYear_SessionEndDate
	, CohortYear.SchoolYear AS CohortYear_SchoolYear
	, CohortYear.SessionBeginDate AS CohortYear_SessionBeginDate
	, CohortYear.SessionEndDate AS CohortYear_SessionEndDate
	, CteStatus.CteAeDisplacedHomemakerIndicatorCode AS CteStatus_CteAeDisplacedHomemakerIndicatorCode
	, CteStatus.CteAeDisplacedHomemakerIndicatorDescription AS CteStatus_CteAeDisplacedHomemakerIndicatorDescription
	, CteStatus.CteAeDisplacedHomemakerIndicatorEdFactsCode AS CteStatus_CteAeDisplacedHomemakerIndicatorEdFactsCode
	, CteStatus.CteNontraditionalGenderStatusCode AS CteStatus_CteNontraditionalGenderStatusCode
	, CteStatus.CteNontraditionalGenderStatusDescription AS CteStatus_CteNontraditionalGenderStatusDescription
	, CteStatus.CteNontraditionalGenderStatusEdFactsCode AS CteStatus_CteNontraditionalGenderStatusEdFactsCode
	, CteStatus.CteNontraditionalCompletionCode AS CteStatus_CteNontraditionalCompletionCode
	, CteStatus.CteNontraditionalCompletionDescription AS CteStatus_CteNontraditionalCompletionDescription
	, CteStatus.CteNontraditionalCompletionEdFactsCode AS CteStatus_CteNontraditionalCompletionEdFactsCode
	, CteStatus.SingleParentOrSinglePregnantWomanStatusCode AS CteStatus_SingleParentOrSinglePregnantWomanStatusCode
	, CteStatus.SingleParentOrSinglePregnantWomanStatusDescription AS CteStatus_SingleParentOrSinglePregnantWomanStatusDescription
	, CteStatus.SingleParentOrSinglePregnantWomanStatusEdFactsCode AS CteStatus_SingleParentOrSinglePregnantWomanStatusEdFactsCode
	, CteStatus.CteGraduationRateInclusionCode AS CteStatus_CteGraduationRateInclusionCode
	, CteStatus.CteGraduationRateInclusionDescription AS CteStatus_CteGraduationRateInclusionDescription
	, CteStatus.CteGraduationRateInclusionEdFactsCode AS CteStatus_CteGraduationRateInclusionEdFactsCode
	, CteStatus.CteParticipantCode AS CteStatus_CteParticipantCode
	, CteStatus.CteParticipantDescription AS CteStatus_CteParticipantDescription
	, CteStatus.CteParticipantEdFactsCode AS CteStatus_CteParticipantEdFactsCode
	, CteStatus.CteConcentratorCode AS CteStatus_CteConcentratorCode
	, CteStatus.CteConcentratorDescription AS CteStatus_CteConcentratorDescription
	, CteStatus.CteConcentratorEdFactsCode AS CteStatus_CteConcentratorEdFactsCode
	, EntryGradeLevel.GradeLevelCode AS EntryGradeLevel_GradeLevelCode
	, EntryGradeLevel.GradeLevelDescription AS EntryGradeLevel_GradeLevelDescription
	, EntryGradeLevel.GradeLevelEdFactsCode AS EntryGradeLevel_GradeLevelEdFactsCode
	, ExitGradeLevel.GradeLevelCode AS ExitGradeLevel_GradeLevelCode
	, ExitGradeLevel.GradeLevelDescription AS ExitGradeLevel_GradeLevelDescription
	, ExitGradeLevel.GradeLevelEdFactsCode AS ExitGradeLevel_GradeLevelEdFactsCode
	, EnrollmentEntryDate.DateValue AS EnrollmentEntryDate_DateValue
	, EnrollmentEntryDate.Day AS EnrollmentEntryDate_Day
	, EnrollmentEntryDate.DayOfWeek AS EnrollmentEntryDate_DayOfWeek
	, EnrollmentEntryDate.DayOfYear AS EnrollmentEntryDate_DayOfYear
	, EnrollmentEntryDate.Month AS EnrollmentEntryDate_Month
	, EnrollmentEntryDate.MonthName AS EnrollmentEntryDate_MonthName
	, EnrollmentEntryDate.SubmissionYear AS EnrollmentEntryDate_SubmissionYear
	, EnrollmentEntryDate.Year AS EnrollmentEntryDate_Year
	, EnrollmentExitDate.DateValue AS EnrollmentExitDate_DateValue
	, EnrollmentExitDate.Day AS EnrollmentExitDate_Day
	, EnrollmentExitDate.DayOfWeek AS EnrollmentExitDate_DayOfWeek
	, EnrollmentExitDate.DayOfYear AS EnrollmentExitDate_DayOfYear
	, EnrollmentExitDate.Month AS EnrollmentExitDate_Month
	, EnrollmentExitDate.MonthName AS EnrollmentExitDate_MonthName
	, EnrollmentExitDate.SubmissionYear AS EnrollmentExitDate_SubmissionYear
	, EnrollmentExitDate.Year AS EnrollmentExitDate_Year
	, EnglishLearnerStatus.EnglishLearnerStatusCode AS EnglishLearnerStatus_EnglishLearnerStatusCode
	, EnglishLearnerStatus.EnglishLearnerStatusDescription AS EnglishLearnerStatus_EnglishLearnerStatusDescription
	, EnglishLearnerStatus.EnglishLearnerStatusEdFactsCode AS EnglishLearnerStatus_EnglishLearnerStatusEdFactsCode
	, EnglishLearnerStatus.PerkinsEnglishLearnerStatusCode AS EnglishLearnerStatus_PerkinsEnglishLearnerStatusCode
	, EnglishLearnerStatus.PerkinsEnglishLearnerStatusDescription AS EnglishLearnerStatus_PerkinsEnglishLearnerStatusDescription
	, EnglishLearnerStatus.PerkinsEnglishLearnerStatusEdFactsCode AS EnglishLearnerStatus_PerkinsEnglishLearnerStatusEdFactsCode
	, K12EnrollmentStatus.EnrollmentStatusCode AS K12EnrollmentStatus_EnrollmentStatusCode
	, K12EnrollmentStatus.EnrollmentStatusDescription AS K12EnrollmentStatus_EnrollmentStatusDescription
	, K12EnrollmentStatus.EntryTypeCode AS K12EnrollmentStatus_EntryTypeCode
	, K12EnrollmentStatus.EntryTypeDescription AS K12EnrollmentStatus_EntryTypeDescription
	, K12EnrollmentStatus.ExitOrWithdrawalTypeCode AS K12EnrollmentStatus_ExitOrWithdrawalTypeCode
	, K12EnrollmentStatus.ExitOrWithdrawalTypeDescription AS K12EnrollmentStatus_ExitOrWithdrawalTypeDescription
	, K12EnrollmentStatus.AdjustedExitOrWithdrawalTypeCode AS K12EnrollmentStatus_AdjustedExitOrWithdrawalTypeCode
	, K12EnrollmentStatus.AdjustedExitOrWithdrawalTypeDescription AS K12EnrollmentStatus_AdjustedExitOrWithdrawalTypeDescription
	, K12EnrollmentStatus.ExitOrWithdrawalStatusCode AS K12EnrollmentStatus_ExitOrWithdrawalStatusCode
	, K12EnrollmentStatus.ExitOrWithdrawalStatusDescription AS K12EnrollmentStatus_ExitOrWithdrawalStatusDescription
	, K12RetentionStatus.RetentionExemptionReasonCode AS K12RetentionStatus_RetentionExemptionReasonCode
	, K12RetentionStatus.RetentionExemptionReasonDescription AS K12RetentionStatus_RetentionExemptionReasonDescription
	, K12RetentionStatus.EndOfTermStatusCode AS K12RetentionStatus_EndOfTermStatusCode
	, K12RetentionStatus.EndOfTermStatusDescription AS K12RetentionStatus_EndOfTermStatusDescription
	, K12DropoutStatus.StudentDropoutStatusCode AS K12DropoutStatus_StudentDropoutStatusCode
	, K12DropoutStatus.StudentDropoutStatusDescription AS K12DropoutStatus_StudentDropoutStatusDescription
	, K12DropoutStatus.DropoutReasonTypeCode AS K12DropoutStatus_DropoutReasonTypeCode
	, K12DropoutStatus.DropoutReasonTypeDescription AS K12DropoutStatus_DropoutReasonTypeDescription
	, CteOutcomeIndicator.EdFactsAcademicOrCareerAndTechnicalOutcomeTypeCode AS CteOutcomeIndicator_EdFactsAcademicOrCareerAndTechnicalOutcomeTypeCode
	, CteOutcomeIndicator.EdFactsAcademicOrCareerAndTechnicalOutcomeTypeDescription AS CteOutcomeIndicator_EdFactsAcademicOrCareerAndTechnicalOutcomeTypeDescription
	, CteOutcomeIndicator.EdFactsAcademicOrCareerAndTechnicalOutcomeTypeEdFactsCode AS CteOutcomeIndicator_EdFactsAcademicOrCareerAndTechnicalOutcomeTypeEdFactsCode
	, CteOutcomeIndicator.EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeCode AS CteOutcomeIndicator_EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeCode
	, CteOutcomeIndicator.EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeDescription AS CteOutcomeIndicator_EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeDescription
	, CteOutcomeIndicator.EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeEdFactsCode AS CteOutcomeIndicator_EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeEdFactsCode
	, CteOutcomeIndicator.PerkinsPostProgramPlacementIndicatorCode AS CteOutcomeIndicator_PerkinsPostProgramPlacementIndicatorCode
	, CteOutcomeIndicator.PerkinsPostProgramPlacementIndicatorDescription AS CteOutcomeIndicator_PerkinsPostProgramPlacementIndicatorDescription
	, PsEnrollmentStatus.PostsecondaryExitOrWithdrawalTypeCode AS PsEnrollmentStatus_PostsecondaryExitOrWithdrawalTypeCode
	, PsEnrollmentStatus.PostsecondaryExitOrWithdrawalTypeDescription AS PsEnrollmentStatus_PostsecondaryExitOrWithdrawalTypeDescription
	, PsEnrollmentStatus.PostsecondaryEnrollmentStatusCode AS PsEnrollmentStatus_PostsecondaryEnrollmentStatusCode
	, PsEnrollmentStatus.PostsecondaryEnrollmentStatusDescription AS PsEnrollmentStatus_PostsecondaryEnrollmentStatusDescription
	, PsEnrollmentStatus.PostSecondaryEnrollmentStatusEdFactsCode AS PsEnrollmentStatus_PostSecondaryEnrollmentStatusEdFactsCode
	, K12Demographic.SexCode AS K12Demographic_SexCode
	, K12Demographic.SexDescription AS K12Demographic_SexDescription
	, K12Demographic.SexEdFactsCode AS K12Demographic_SexEdFactsCode
	, IdeaStatus.SpecialEducationExitReasonCode AS IdeaStatus_SpecialEducationExitReasonCode
	, IdeaStatus.SpecialEducationExitReasonDescription AS IdeaStatus_SpecialEducationExitReasonDescription
	, IdeaStatus.SpecialEducationExitReasonEdFactsCode AS IdeaStatus_SpecialEducationExitReasonEdFactsCode
	, IdeaStatus.IdeaEducationalEnvironmentForSchoolAgeDescription AS IdeaStatus_IdeaEducationalEnvironmentForSchoolAgeDescription
	, IdeaStatus.IdeaEducationalEnvironmentForSchoolAgeCode AS IdeaStatus_IdeaEducationalEnvironmentForSchoolAgeCode
	, IdeaStatus.IdeaEducationalEnvironmentForSchoolAgeEdFactsCode AS IdeaStatus_IdeaEducationalEnvironmentForSchoolAgeEdFactsCode
	, IdeaStatus.IdeaIndicatorCode AS IdeaStatus_IdeaIndicatorCode
	, IdeaStatus.IdeaIndicatorDescription AS IdeaStatus_IdeaIndicatorDescription
	, IdeaStatus.IdeaIndicatorEdFactsCode AS IdeaStatus_IdeaIndicatorEdFactsCode
	, IdeaStatus.IdeaEducationalEnvironmentForEarlyChildhoodCode AS IdeaStatus_IdeaEducationalEnvironmentForEarlyChildhoodCode
	, IdeaStatus.IdeaEducationalEnvironmentForEarlyChildhoodDescription AS IdeaStatus_IdeaEducationalEnvironmentForEarlyChildhoodDescription
	, IdeaStatus.IdeaEducationalEnvironmentForEarlyChildhoodEdFactsCode AS IdeaStatus_IdeaEducationalEnvironmentForEarlyChildhoodEdFactsCode
	, DisabilityStatus.DisabilityStatusCode AS DisabilityStatus_DisabilityStatusCode
	, DisabilityStatus.DisabilityStatusDescription AS DisabilityStatus_DisabilityStatusDescription
	, DisabilityStatus.Section504StatusCode AS DisabilityStatus_Section504StatusCode
	, DisabilityStatus.Section504StatusDescription AS DisabilityStatus_Section504StatusDescription
	, DisabilityStatus.Section504StatusEdFactsCode AS DisabilityStatus_Section504StatusEdFactsCode
	, DisabilityStatus.DisabilityConditionTypeCode AS DisabilityStatus_DisabilityConditionTypeCode
	, DisabilityStatus.DisabilityConditionTypeDescription AS DisabilityStatus_DisabilityConditionTypeDescription
	, DisabilityStatus.DisabilityDeterminationSourceTypeCode AS DisabilityStatus_DisabilityDeterminationSourceTypeCode
	, DisabilityStatus.DisabilityDeterminationSourceTypeDescription AS DisabilityStatus_DisabilityDeterminationSourceTypeDescription
	, HomelessnessStatus.HomelessnessStatusCode AS HomelessnessStatus_HomelessnessStatusCode
	, HomelessnessStatus.HomelessnessStatusDescription AS HomelessnessStatus_HomelessnessStatusDescription
	, HomelessnessStatus.HomelessnessStatusEdFactsCode AS HomelessnessStatus_HomelessnessStatusEdFactsCode
	, HomelessnessStatus.HomelessPrimaryNighttimeResidenceCode AS HomelessnessStatus_HomelessPrimaryNighttimeResidenceCode
	, HomelessnessStatus.HomelessPrimaryNighttimeResidenceDescription AS HomelessnessStatus_HomelessPrimaryNighttimeResidenceDescription
	, HomelessnessStatus.HomelessPrimaryNighttimeResidenceEdFactsCode AS HomelessnessStatus_HomelessPrimaryNighttimeResidenceEdFactsCode
	, HomelessnessStatus.HomelessServicedIndicatorCode AS HomelessnessStatus_HomelessServicedIndicatorCode
	, HomelessnessStatus.HomelessServicedIndicatorDescription AS HomelessnessStatus_HomelessServicedIndicatorDescription
	, HomelessnessStatus.HomelessUnaccompaniedYouthStatusCode AS HomelessnessStatus_HomelessUnaccompaniedYouthStatusCode
	, HomelessnessStatus.HomelessUnaccompaniedYouthStatusDescription AS HomelessnessStatus_HomelessUnaccompaniedYouthStatusDescription
	, HomelessnessStatus.HomelessUnaccompaniedYouthStatusEdFactsCode AS HomelessnessStatus_HomelessUnaccompaniedYouthStatusEdFactsCode
	, EconomicallyDisadvantagedStatus.EconomicDisadvantageStatusCode AS EconomicallyDisadvantagedStatus_EconomicDisadvantageStatusCode
	, EconomicallyDisadvantagedStatus.EconomicDisadvantageStatusDescription AS EconomicallyDisadvantagedStatus_EconomicDisadvantageStatusDescription
	, EconomicallyDisadvantagedStatus.EconomicDisadvantageStatusEdFactsCode AS EconomicallyDisadvantagedStatus_EconomicDisadvantageStatusEdFactsCode
	, EconomicallyDisadvantagedStatus.EligibilityStatusForSchoolFoodServiceProgramsCode AS EconomicallyDisadvantagedStatus_EligibilityStatusForSchoolFoodServiceProgramsCode
	, EconomicallyDisadvantagedStatus.EligibilityStatusForSchoolFoodServiceProgramsDescription AS EconomicallyDisadvantagedStatus_EligibilityStatusForSchoolFoodServiceProgramsDescription
	, EconomicallyDisadvantagedStatus.EligibilityStatusForSchoolFoodServiceProgramsEdFactsCode AS EconomicallyDisadvantagedStatus_EligibilityStatusForSchoolFoodServiceProgramsEdFactsCode
	, EconomicallyDisadvantagedStatus.NationalSchoolLunchProgramDirectCertificationIndicatorCode AS EconomicallyDisadvantagedStatus_NationalSchoolLunchProgramDirectCertificationIndicatorCode
	, EconomicallyDisadvantagedStatus.NationalSchoolLunchProgramDirectCertificationIndicatorDescription AS EconomicallyDisadvantagedStatus_NationalSchoolLunchProgramDirectCertificationIndicatorDescription
	, FosterCareStatus.ProgramParticipationFosterCareCode AS FosterCareStatus_ProgramParticipationFosterCareCode
	, FosterCareStatus.ProgramParticipationFosterCareDescription AS FosterCareStatus_ProgramParticipationFosterCareDescription
	, FosterCareStatus.ProgramParticipationFosterCareEdFactsCode AS FosterCareStatus_ProgramParticipationFosterCareEdFactsCode
	, ImmigrantStatus.TitleIIIImmigrantStatusCode AS ImmigrantStatus_TitleIIIImmigrantStatusCode
	, ImmigrantStatus.TitleIIIImmigrantStatusDescription AS ImmigrantStatus_TitleIIIImmigrantStatusDescription
	, ImmigrantStatus.TitleIIIImmigrantStatusEdFactsCode AS ImmigrantStatus_TitleIIIImmigrantStatusEdFactsCode
	, ImmigrantStatus.TitleIIIImmigrantParticipationStatusCode AS ImmigrantStatus_TitleIIIImmigrantParticipationStatusCode
	, ImmigrantStatus.TitleIIIImmigrantParticipationStatusDescription AS ImmigrantStatus_TitleIIIImmigrantParticipationStatusDescription
	, ImmigrantStatus.TitleIIIImmigrantParticipationStatusEdFactsCode AS ImmigrantStatus_TitleIIIImmigrantParticipationStatusEdFactsCode
	, LanguageHome.Iso6392LanguageCodeCode AS LanguageHome_Iso6392LanguageCodeCode
	, LanguageHome.Iso6392LanguageCodeDescription AS LanguageHome_Iso6392LanguageCodeDescription
	, LanguageHome.Iso6392LanguageCodeEdFactsCode AS LanguageHome_Iso6392LanguageCodeEdFactsCode
	, LanguageHome.Iso6393LanguageCodeCode AS LanguageHome_Iso6393LanguageCodeCode
	, LanguageHome.Iso6393LanguageCodeDescription AS LanguageHome_Iso6393LanguageCodeDescription
	, GiftedAndTalentedStatus.GiftedAndTalentedIndicatorCode AS GiftedAndTalentedStatus_GiftedAndTalentedIndicatorCode
	, GiftedAndTalentedStatus.GiftedAndTalentedIndicatorDescription AS GiftedAndTalentedStatus_GiftedAndTalentedIndicatorDescription
	, GiftedAndTalentedStatus.ProgramGiftedEligibilityCriteriaCode AS GiftedAndTalentedStatus_ProgramGiftedEligibilityCriteriaCode
	, GiftedAndTalentedStatus.ProgramGiftedEligibilityCriteriaDescription AS GiftedAndTalentedStatus_ProgramGiftedEligibilityCriteriaDescription
	, LanguageNative.Iso6392LanguageCodeCode AS LanguageNative_Iso6392LanguageCodeCode
	, LanguageNative.Iso6392LanguageCodeDescription AS LanguageNative_Iso6392LanguageCodeDescription
	, LanguageNative.Iso6392LanguageCodeEdFactsCode AS LanguageNative_Iso6392LanguageCodeEdFactsCode
	, LanguageNative.Iso6393LanguageCodeCode AS LanguageNative_Iso6393LanguageCodeCode
	, LanguageNative.Iso6393LanguageCodeDescription AS LanguageNative_Iso6393LanguageCodeDescription
	, MigrantStatus.MigrantStatusCode AS MigrantStatus_MigrantStatusCode
	, MigrantStatus.MigrantStatusDescription AS MigrantStatus_MigrantStatusDescription
	, MigrantStatus.MigrantStatusEdFactsCode AS MigrantStatus_MigrantStatusEdFactsCode
	, MigrantStatus.MigrantEducationProgramEnrollmentTypeCode AS MigrantStatus_MigrantEducationProgramEnrollmentTypeCode
	, MigrantStatus.MigrantEducationProgramEnrollmentTypeDescription AS MigrantStatus_MigrantEducationProgramEnrollmentTypeDescription
	, MigrantStatus.ContinuationOfServicesReasonCode AS MigrantStatus_ContinuationOfServicesReasonCode
	, MigrantStatus.ContinuationOfServicesReasonDescription AS MigrantStatus_ContinuationOfServicesReasonDescription
	, MigrantStatus.MEPContinuationOfServicesStatusCode AS MigrantStatus_MEPContinuationOfServicesStatusCode
	, MigrantStatus.MEPContinuationOfServicesStatusDescription AS MigrantStatus_MEPContinuationOfServicesStatusDescription
	, MigrantStatus.MEPContinuationOfServicesStatusEdFactsCode AS MigrantStatus_MEPContinuationOfServicesStatusEdFactsCode
	, MigrantStatus.ConsolidatedMepFundsStatusCode AS MigrantStatus_ConsolidatedMepFundsStatusCode
	, MigrantStatus.ConsolidatedMepFundsStatusDescription AS MigrantStatus_ConsolidatedMepFundsStatusDescription
	, MigrantStatus.ConsolidatedMepFundsStatusEdFactsCode AS MigrantStatus_ConsolidatedMepFundsStatusEdFactsCode
	, MigrantStatus.MigrantEducationProgramServicesTypeCode AS MigrantStatus_MigrantEducationProgramServicesTypeCode
	, MigrantStatus.MigrantEducationProgramServicesTypeDescription AS MigrantStatus_MigrantEducationProgramServicesTypeDescription
	, MigrantStatus.MigrantEducationProgramServicesTypeEdFactsCode AS MigrantStatus_MigrantEducationProgramServicesTypeEdFactsCode
	, MigrantStatus.MigrantPrioritizedForServicesCode AS MigrantStatus_MigrantPrioritizedForServicesCode
	, MigrantStatus.MigrantPrioritizedForServicesDescription AS MigrantStatus_MigrantPrioritizedForServicesDescription
	, MigrantStatus.MigrantPrioritizedForServicesEdFactsCode AS MigrantStatus_MigrantPrioritizedForServicesEdFactsCode
	, MilitaryStatus.MilitaryConnectedStudentIndicatorCode AS MilitaryStatus_MilitaryConnectedStudentIndicatorCode
	, MilitaryStatus.MilitaryConnectedStudentIndicatorDescription AS MilitaryStatus_MilitaryConnectedStudentIndicatorDescription
	, MilitaryStatus.MilitaryConnectedStudentIndicatorEdFactsCode AS MilitaryStatus_MilitaryConnectedStudentIndicatorEdFactsCode
	, MilitaryStatus.ActiveMilitaryStatusIndicatorCode AS MilitaryStatus_ActiveMilitaryStatusIndicatorCode
	, MilitaryStatus.ActiveMilitaryStatusIndicatorDescription AS MilitaryStatus_ActiveMilitaryStatusIndicatorDescription
	, MilitaryStatus.MilitaryBranchCode AS MilitaryStatus_MilitaryBranchCode
	, MilitaryStatus.MilitaryBranchDescription AS MilitaryStatus_MilitaryBranchDescription
	, MilitaryStatus.MilitaryVeteranStatusIndicatorCode AS MilitaryStatus_MilitaryVeteranStatusIndicatorCode
	, MilitaryStatus.MilitaryVeteranStatusIndicatorDescription AS MilitaryStatus_MilitaryVeteranStatusIndicatorDescription
	, NOrDStatus.NeglectedOrDelinquentLongTermStatusCode AS NOrDStatus_NeglectedOrDelinquentLongTermStatusCode
	, NOrDStatus.NeglectedOrDelinquentLongTermStatusDescription AS NOrDStatus_NeglectedOrDelinquentLongTermStatusDescription
	, NOrDStatus.NeglectedOrDelinquentLongTermStatusEdFactsCode AS NOrDStatus_NeglectedOrDelinquentLongTermStatusEdFactsCode
	, NOrDStatus.NeglectedOrDelinquentProgramTypeCode AS NOrDStatus_NeglectedOrDelinquentProgramTypeCode
	, NOrDStatus.NeglectedOrDelinquentProgramTypeDescription AS NOrDStatus_NeglectedOrDelinquentProgramTypeDescription
	, NOrDStatus.NeglectedOrDelinquentProgramTypeEdFactsCode AS NOrDStatus_NeglectedOrDelinquentProgramTypeEdFactsCode
	, NOrDStatus.NeglectedProgramTypeCode AS NOrDStatus_NeglectedProgramTypeCode
	, NOrDStatus.NeglectedProgramTypeDescription AS NOrDStatus_NeglectedProgramTypeDescription
	, NOrDStatus.NeglectedProgramTypeEdFactsCode AS NOrDStatus_NeglectedProgramTypeEdFactsCode
	, NOrDStatus.DelinquentProgramTypeCode AS NOrDStatus_DelinquentProgramTypeCode
	, NOrDStatus.DelinquentProgramTypeDescription AS NOrDStatus_DelinquentProgramTypeDescription
	, NOrDStatus.DelinquentProgramTypeEdFactsCode AS NOrDStatus_DelinquentProgramTypeEdFactsCode
	, NOrDStatus.NeglectedOrDelinquentStatusCode AS NOrDStatus_NeglectedOrDelinquentStatusCode
	, NOrDStatus.NeglectedOrDelinquentStatusDescription AS NOrDStatus_NeglectedOrDelinquentStatusDescription
	, NOrDStatus.NeglectedOrDelinquentProgramEnrollmentSubpartCode AS NOrDStatus_NeglectedOrDelinquentProgramEnrollmentSubpartCode
	, NOrDStatus.NeglectedOrDelinquentProgramEnrollmentSubpartDescription AS NOrDStatus_NeglectedOrDelinquentProgramEnrollmentSubpartDescription
	, NOrDStatus.NeglectedOrDelinquentAcademicAchievementIndicatorCode AS NOrDStatus_NeglectedOrDelinquentAcademicAchievementIndicatorCode
	, NOrDStatus.NeglectedOrDelinquentAcademicAchievementIndicatorDescription AS NOrDStatus_NeglectedOrDelinquentAcademicAchievementIndicatorDescription
	, NOrDStatus.NeglectedOrDelinquentAcademicOutcomeIndicatorCode AS NOrDStatus_NeglectedOrDelinquentAcademicOutcomeIndicatorCode
	, NOrDStatus.NeglectedOrDelinquentAcademicOutcomeIndicatorDescription AS NOrDStatus_NeglectedOrDelinquentAcademicOutcomeIndicatorDescription
	, PrimaryDisabilityType.IdeaDisabilityTypeCode AS PrimaryDisabilityType_IdeaDisabilityTypeCode
	, PrimaryDisabilityType.IdeaDisabilityTypeDescription AS PrimaryDisabilityType_IdeaDisabilityTypeDescription
	, PrimaryDisabilityType.IdeaDisabilityTypeEdFactsCode AS PrimaryDisabilityType_IdeaDisabilityTypeEdFactsCode
	, SecondaryDisabilityType.IdeaDisabilityTypeCode AS SecondaryDisabilityType_IdeaDisabilityTypeCode
	, SecondaryDisabilityType.IdeaDisabilityTypeDescription AS SecondaryDisabilityType_IdeaDisabilityTypeDescription
	, SecondaryDisabilityType.IdeaDisabilityTypeEdFactsCode AS SecondaryDisabilityType_IdeaDisabilityTypeEdFactsCode
	, ProjectedGraduationDate.DateValue AS ProjectedGraduationDate_DateValue
	, ProjectedGraduationDate.Day AS ProjectedGraduationDate_Day
	, ProjectedGraduationDate.DayOfWeek AS ProjectedGraduationDate_DayOfWeek
	, ProjectedGraduationDate.DayOfYear AS ProjectedGraduationDate_DayOfYear
	, ProjectedGraduationDate.Month AS ProjectedGraduationDate_Month
	, ProjectedGraduationDate.MonthName AS ProjectedGraduationDate_MonthName
	, ProjectedGraduationDate.SubmissionYear AS ProjectedGraduationDate_SubmissionYear
	, ProjectedGraduationDate.Year AS ProjectedGraduationDate_Year
	, StatusStartDateEconomicallyDisadvantaged.DateValue AS StatusStartDateEconomicallyDisadvantaged_DateValue
	, StatusStartDateEconomicallyDisadvantaged.Day AS StatusStartDateEconomicallyDisadvantaged_Day
	, StatusStartDateEconomicallyDisadvantaged.DayOfWeek AS StatusStartDateEconomicallyDisadvantaged_DayOfWeek
	, StatusStartDateEconomicallyDisadvantaged.DayOfYear AS StatusStartDateEconomicallyDisadvantaged_DayOfYear
	, StatusStartDateEconomicallyDisadvantaged.Month AS StatusStartDateEconomicallyDisadvantaged_Month
	, StatusStartDateEconomicallyDisadvantaged.MonthName AS StatusStartDateEconomicallyDisadvantaged_MonthName
	, StatusStartDateEconomicallyDisadvantaged.SubmissionYear AS StatusStartDateEconomicallyDisadvantaged_SubmissionYear
	, StatusStartDateEconomicallyDisadvantaged.Year AS StatusStartDateEconomicallyDisadvantaged_Year
	, StatusEndDateEconomicallyDisadvantaged.DateValue AS StatusEndDateEconomicallyDisadvantaged_DateValue
	, StatusEndDateEconomicallyDisadvantaged.Day AS StatusEndDateEconomicallyDisadvantaged_Day
	, StatusEndDateEconomicallyDisadvantaged.DayOfWeek AS StatusEndDateEconomicallyDisadvantaged_DayOfWeek
	, StatusEndDateEconomicallyDisadvantaged.DayOfYear AS StatusEndDateEconomicallyDisadvantaged_DayOfYear
	, StatusEndDateEconomicallyDisadvantaged.Month AS StatusEndDateEconomicallyDisadvantaged_Month
	, StatusEndDateEconomicallyDisadvantaged.MonthName AS StatusEndDateEconomicallyDisadvantaged_MonthName
	, StatusEndDateEconomicallyDisadvantaged.SubmissionYear AS StatusEndDateEconomicallyDisadvantaged_SubmissionYear
	, StatusEndDateEconomicallyDisadvantaged.Year AS StatusEndDateEconomicallyDisadvantaged_Year
	, StatusStartDateEnglishLearner.DateValue AS StatusStartDateEnglishLearner_DateValue
	, StatusStartDateEnglishLearner.Day AS StatusStartDateEnglishLearner_Day
	, StatusStartDateEnglishLearner.DayOfWeek AS StatusStartDateEnglishLearner_DayOfWeek
	, StatusStartDateEnglishLearner.DayOfYear AS StatusStartDateEnglishLearner_DayOfYear
	, StatusStartDateEnglishLearner.Month AS StatusStartDateEnglishLearner_Month
	, StatusStartDateEnglishLearner.MonthName AS StatusStartDateEnglishLearner_MonthName
	, StatusStartDateEnglishLearner.SubmissionYear AS StatusStartDateEnglishLearner_SubmissionYear
	, StatusStartDateEnglishLearner.Year AS StatusStartDateEnglishLearner_Year
	, StatusEndDateEnglishLearner.DateValue AS StatusEndDateEnglishLearner_DateValue
	, StatusEndDateEnglishLearner.Day AS StatusEndDateEnglishLearner_Day
	, StatusEndDateEnglishLearner.DayOfWeek AS StatusEndDateEnglishLearner_DayOfWeek
	, StatusEndDateEnglishLearner.DayOfYear AS StatusEndDateEnglishLearner_DayOfYear
	, StatusEndDateEnglishLearner.Month AS StatusEndDateEnglishLearner_Month
	, StatusEndDateEnglishLearner.MonthName AS StatusEndDateEnglishLearner_MonthName
	, StatusEndDateEnglishLearner.SubmissionYear AS StatusEndDateEnglishLearner_SubmissionYear
	, StatusEndDateEnglishLearner.Year AS StatusEndDateEnglishLearner_Year
	, StatusStartDateHomelessness.DateValue AS StatusStartDateHomelessness_DateValue
	, StatusStartDateHomelessness.Day AS StatusStartDateHomelessness_Day
	, StatusStartDateHomelessness.DayOfWeek AS StatusStartDateHomelessness_DayOfWeek
	, StatusStartDateHomelessness.DayOfYear AS StatusStartDateHomelessness_DayOfYear
	, StatusStartDateHomelessness.Month AS StatusStartDateHomelessness_Month
	, StatusStartDateHomelessness.MonthName AS StatusStartDateHomelessness_MonthName
	, StatusStartDateHomelessness.SubmissionYear AS StatusStartDateHomelessness_SubmissionYear
	, StatusStartDateHomelessness.Year AS StatusStartDateHomelessness_Year
	, StatusEndDateHomelessness.DateValue AS StatusEndDateHomelessness_DateValue
	, StatusEndDateHomelessness.Day AS StatusEndDateHomelessness_Day
	, StatusEndDateHomelessness.DayOfWeek AS StatusEndDateHomelessness_DayOfWeek
	, StatusEndDateHomelessness.DayOfYear AS StatusEndDateHomelessness_DayOfYear
	, StatusEndDateHomelessness.Month AS StatusEndDateHomelessness_Month
	, StatusEndDateHomelessness.MonthName AS StatusEndDateHomelessness_MonthName
	, StatusEndDateHomelessness.SubmissionYear AS StatusEndDateHomelessness_SubmissionYear
	, StatusEndDateHomelessness.Year AS StatusEndDateHomelessness_Year
	, StatusStartDateIdea.DateValue AS StatusStartDateIdea_DateValue
	, StatusStartDateIdea.Day AS StatusStartDateIdea_Day
	, StatusStartDateIdea.DayOfWeek AS StatusStartDateIdea_DayOfWeek
	, StatusStartDateIdea.DayOfYear AS StatusStartDateIdea_DayOfYear
	, StatusStartDateIdea.Month AS StatusStartDateIdea_Month
	, StatusStartDateIdea.MonthName AS StatusStartDateIdea_MonthName
	, StatusStartDateIdea.SubmissionYear AS StatusStartDateIdea_SubmissionYear
	, StatusStartDateIdea.Year AS StatusStartDateIdea_Year
	, StatusEndDateIdea.DateValue AS StatusEndDateIdea_DateValue
	, StatusEndDateIdea.Day AS StatusEndDateIdea_Day
	, StatusEndDateIdea.DayOfWeek AS StatusEndDateIdea_DayOfWeek
	, StatusEndDateIdea.DayOfYear AS StatusEndDateIdea_DayOfYear
	, StatusEndDateIdea.Month AS StatusEndDateIdea_Month
	, StatusEndDateIdea.MonthName AS StatusEndDateIdea_MonthName
	, StatusEndDateIdea.SubmissionYear AS StatusEndDateIdea_SubmissionYear
	, StatusEndDateIdea.Year AS StatusEndDateIdea_Year
	, StatusStartDateMigrant.DateValue AS StatusStartDateMigrant_DateValue
	, StatusStartDateMigrant.Day AS StatusStartDateMigrant_Day
	, StatusStartDateMigrant.DayOfWeek AS StatusStartDateMigrant_DayOfWeek
	, StatusStartDateMigrant.DayOfYear AS StatusStartDateMigrant_DayOfYear
	, StatusStartDateMigrant.Month AS StatusStartDateMigrant_Month
	, StatusStartDateMigrant.MonthName AS StatusStartDateMigrant_MonthName
	, StatusStartDateMigrant.SubmissionYear AS StatusStartDateMigrant_SubmissionYear
	, StatusStartDateMigrant.Year AS StatusStartDateMigrant_Year
	, StatusEndDateMigrant.DateValue AS StatusEndDateMigrant_DateValue
	, StatusEndDateMigrant.Day AS StatusEndDateMigrant_Day
	, StatusEndDateMigrant.DayOfWeek AS StatusEndDateMigrant_DayOfWeek
	, StatusEndDateMigrant.DayOfYear AS StatusEndDateMigrant_DayOfYear
	, StatusEndDateMigrant.Month AS StatusEndDateMigrant_Month
	, StatusEndDateMigrant.MonthName AS StatusEndDateMigrant_MonthName
	, StatusEndDateMigrant.SubmissionYear AS StatusEndDateMigrant_SubmissionYear
	, StatusEndDateMigrant.Year AS StatusEndDateMigrant_Year
	, StatusStartDateMilitaryConnectedStudent.DateValue AS StatusStartDateMilitaryConnectedStudent_DateValue
	, StatusStartDateMilitaryConnectedStudent.Day AS StatusStartDateMilitaryConnectedStudent_Day
	, StatusStartDateMilitaryConnectedStudent.DayOfWeek AS StatusStartDateMilitaryConnectedStudent_DayOfWeek
	, StatusStartDateMilitaryConnectedStudent.DayOfYear AS StatusStartDateMilitaryConnectedStudent_DayOfYear
	, StatusStartDateMilitaryConnectedStudent.Month AS StatusStartDateMilitaryConnectedStudent_Month
	, StatusStartDateMilitaryConnectedStudent.MonthName AS StatusStartDateMilitaryConnectedStudent_MonthName
	, StatusStartDateMilitaryConnectedStudent.SubmissionYear AS StatusStartDateMilitaryConnectedStudent_SubmissionYear
	, StatusStartDateMilitaryConnectedStudent.Year AS StatusStartDateMilitaryConnectedStudent_Year
	, StatusEndDateMilitaryConnectedStudent.DateValue AS StatusEndDateMilitaryConnectedStudent_DateValue
	, StatusEndDateMilitaryConnectedStudent.Day AS StatusEndDateMilitaryConnectedStudent_Day
	, StatusEndDateMilitaryConnectedStudent.DayOfWeek AS StatusEndDateMilitaryConnectedStudent_DayOfWeek
	, StatusEndDateMilitaryConnectedStudent.DayOfYear AS StatusEndDateMilitaryConnectedStudent_DayOfYear
	, StatusEndDateMilitaryConnectedStudent.Month AS StatusEndDateMilitaryConnectedStudent_Month
	, StatusEndDateMilitaryConnectedStudent.MonthName AS StatusEndDateMilitaryConnectedStudent_MonthName
	, StatusEndDateMilitaryConnectedStudent.SubmissionYear AS StatusEndDateMilitaryConnectedStudent_SubmissionYear
	, StatusEndDateMilitaryConnectedStudent.Year AS StatusEndDateMilitaryConnectedStudent_Year
	, StatusStartDatePerkinsEnglishLearner.DateValue AS StatusStartDatePerkinsEnglishLearner_DateValue
	, StatusStartDatePerkinsEnglishLearner.Day AS StatusStartDatePerkinsEnglishLearner_Day
	, StatusStartDatePerkinsEnglishLearner.DayOfWeek AS StatusStartDatePerkinsEnglishLearner_DayOfWeek
	, StatusStartDatePerkinsEnglishLearner.DayOfYear AS StatusStartDatePerkinsEnglishLearner_DayOfYear
	, StatusStartDatePerkinsEnglishLearner.Month AS StatusStartDatePerkinsEnglishLearner_Month
	, StatusStartDatePerkinsEnglishLearner.MonthName AS StatusStartDatePerkinsEnglishLearner_MonthName
	, StatusStartDatePerkinsEnglishLearner.SubmissionYear AS StatusStartDatePerkinsEnglishLearner_SubmissionYear
	, StatusStartDatePerkinsEnglishLearner.Year AS StatusStartDatePerkinsEnglishLearner_Year
	, StatusEndDatePerkinsEnglishLearner.DateValue AS StatusEndDatePerkinsEnglishLearner_DateValue
	, StatusEndDatePerkinsEnglishLearner.Day AS StatusEndDatePerkinsEnglishLearner_Day
	, StatusEndDatePerkinsEnglishLearner.DayOfWeek AS StatusEndDatePerkinsEnglishLearner_DayOfWeek
	, StatusEndDatePerkinsEnglishLearner.DayOfYear AS StatusEndDatePerkinsEnglishLearner_DayOfYear
	, StatusEndDatePerkinsEnglishLearner.Month AS StatusEndDatePerkinsEnglishLearner_Month
	, StatusEndDatePerkinsEnglishLearner.MonthName AS StatusEndDatePerkinsEnglishLearner_MonthName
	, StatusEndDatePerkinsEnglishLearner.SubmissionYear AS StatusEndDatePerkinsEnglishLearner_SubmissionYear
	, StatusEndDatePerkinsEnglishLearner.Year AS StatusEndDatePerkinsEnglishLearner_Year
	, StatusEndDateTitleIIIImmigrant.DateValue AS StatusEndDateTitleIIIImmigrant_DateValue
	, StatusEndDateTitleIIIImmigrant.Day AS StatusEndDateTitleIIIImmigrant_Day
	, StatusEndDateTitleIIIImmigrant.DayOfWeek AS StatusEndDateTitleIIIImmigrant_DayOfWeek
	, StatusEndDateTitleIIIImmigrant.DayOfYear AS StatusEndDateTitleIIIImmigrant_DayOfYear
	, StatusEndDateTitleIIIImmigrant.Month AS StatusEndDateTitleIIIImmigrant_Month
	, StatusEndDateTitleIIIImmigrant.MonthName AS StatusEndDateTitleIIIImmigrant_MonthName
	, StatusEndDateTitleIIIImmigrant.SubmissionYear AS StatusEndDateTitleIIIImmigrant_SubmissionYear
	, StatusEndDateTitleIIIImmigrant.Year AS StatusEndDateTitleIIIImmigrant_Year
	, StatusStartDateTitleIIIImmigrant.DateValue AS StatusStartDateTitleIIIImmigrant_DateValue
	, StatusStartDateTitleIIIImmigrant.Day AS StatusStartDateTitleIIIImmigrant_Day
	, StatusStartDateTitleIIIImmigrant.DayOfWeek AS StatusStartDateTitleIIIImmigrant_DayOfWeek
	, StatusStartDateTitleIIIImmigrant.DayOfYear AS StatusStartDateTitleIIIImmigrant_DayOfYear
	, StatusStartDateTitleIIIImmigrant.Month AS StatusStartDateTitleIIIImmigrant_Month
	, StatusStartDateTitleIIIImmigrant.MonthName AS StatusStartDateTitleIIIImmigrant_MonthName
	, StatusStartDateTitleIIIImmigrant.SubmissionYear AS StatusStartDateTitleIIIImmigrant_SubmissionYear
	, StatusStartDateTitleIIIImmigrant.Year AS StatusStartDateTitleIIIImmigrant_Year
	, TitleIIIStatus.ProgramParticipationTitleIIILiepCode AS TitleIIIStatus_ProgramParticipationTitleIIILiepCode
	, TitleIIIStatus.ProgramParticipationTitleIIILiepDescription AS TitleIIIStatus_ProgramParticipationTitleIIILiepDescription
	, TitleIIIStatus.TitleIIIImmigrantParticipationStatusCode AS TitleIIIStatus_TitleIIIImmigrantParticipationStatusCode
	, TitleIIIStatus.TitleIIIImmigrantParticipationStatusDescription AS TitleIIIStatus_TitleIIIImmigrantParticipationStatusDescription
	, TitleIIIStatus.TitleIIIImmigrantParticipationStatusEdFactsCode AS TitleIIIStatus_TitleIIIImmigrantParticipationStatusEdFactsCode
	, TitleIIIStatus.ProficiencyStatusCode AS TitleIIIStatus_ProficiencyStatusCode
	, TitleIIIStatus.ProficiencyStatusDescription AS TitleIIIStatus_ProficiencyStatusDescription
	, TitleIIIStatus.ProficiencyStatusEdFactsCode AS TitleIIIStatus_ProficiencyStatusEdFactsCode
	, TitleIIIStatus.TitleIIIAccountabilityProgressStatusCode AS TitleIIIStatus_TitleIIIAccountabilityProgressStatusCode
	, TitleIIIStatus.TitleIIIAccountabilityProgressStatusDescription AS TitleIIIStatus_TitleIIIAccountabilityProgressStatusDescription
	, TitleIIIStatus.TitleIIIAccountabilityProgressStatusEdFactsCode AS TitleIIIStatus_TitleIIIAccountabilityProgressStatusEdFactsCode
	, TitleIIIStatus.TitleIIILanguageInstructionProgramTypeCode AS TitleIIIStatus_TitleIIILanguageInstructionProgramTypeCode
	, TitleIIIStatus.TitleIIILanguageInstructionProgramTypeDescription AS TitleIIIStatus_TitleIIILanguageInstructionProgramTypeDescription
	, TitleIIIStatus.TitleIIILanguageInstructionProgramTypeEdFactsCode AS TitleIIIStatus_TitleIIILanguageInstructionProgramTypeEdFactsCode
	, TitleIIIStatus.EnglishLearnerExitedStatusCode AS TitleIIIStatus_EnglishLearnerExitedStatusCode
	, TitleIIIStatus.EnglishLearnerExitedStatusDescription AS TitleIIIStatus_EnglishLearnerExitedStatusDescription
	, TitleIIIStatus.EnglishLearnerExitedStatusEdFactsCode AS TitleIIIStatus_EnglishLearnerExitedStatusEdFactsCode
	, TitleIStatus.TitleIIndicatorCode AS TitleIStatus_TitleIIndicatorCode
	, TitleIStatus.TitleIIndicatorDescription AS TitleIStatus_TitleIIndicatorDescription
	, TitleIStatus.TitleIIndicatorEdFactsCode AS TitleIStatus_TitleIIndicatorEdFactsCode
	, TitleIStatus.SchoolChoiceAppliedforTransferStatusCode AS TitleIStatus_SchoolChoiceAppliedforTransferStatusCode
	, TitleIStatus.SchoolChoiceAppliedforTransferStatusDescription AS TitleIStatus_SchoolChoiceAppliedforTransferStatusDescription
	, TitleIStatus.SchoolChoiceEligibleforTransferStatusCode AS TitleIStatus_SchoolChoiceEligibleforTransferStatusCode
	, TitleIStatus.SchoolChoiceEligibleforTransferStatusDescription AS TitleIStatus_SchoolChoiceEligibleforTransferStatusDescription
	, TitleIStatus.SchoolChoiceTransferStatusCode AS TitleIStatus_SchoolChoiceTransferStatusCode
	, TitleIStatus.SchoolChoiceTransferStatusDescription AS TitleIStatus_SchoolChoiceTransferStatusDescription
	, TitleIStatus.TitleISchoolSupplementalServicesAppliedStatusCode AS TitleIStatus_TitleISchoolSupplementalServicesAppliedStatusCode
	, TitleIStatus.TitleISchoolSupplementalServicesAppliedStatusDescription AS TitleIStatus_TitleISchoolSupplementalServicesAppliedStatusDescription
	, TitleIStatus.TitleISchoolSupplementalServicesEligibleStatusCode AS TitleIStatus_TitleISchoolSupplementalServicesEligibleStatusCode
	, TitleIStatus.TitleISchoolSupplementalServicesEligibleStatusDescription AS TitleIStatus_TitleISchoolSupplementalServicesEligibleStatusDescription
	, TitleIStatus.TitleISchoolSupplementalServicesReceivedStatusCode AS TitleIStatus_TitleISchoolSupplementalServicesReceivedStatusCode
	, TitleIStatus.TitleISchoolSupplementalServicesReceivedStatusDescription AS TitleIStatus_TitleISchoolSupplementalServicesReceivedStatusDescription
	, TitleIStatus.TitleISchoolwideProgramParticipationCode AS TitleIStatus_TitleISchoolwideProgramParticipationCode
	, TitleIStatus.TitleISchoolwideProgramParticipationDescription AS TitleIStatus_TitleISchoolwideProgramParticipationDescription
	, TitleIStatus.TitleITargetedAssistanceParticipationCode AS TitleIStatus_TitleITargetedAssistanceParticipationCode
	, TitleIStatus.TitleITargetedAssistanceParticipationDescription AS TitleIStatus_TitleITargetedAssistanceParticipationDescription
	, fact.FullTimeEquivalency
	, fact.StudentCount
	, ResponsibleSchoolType.ResponsibleSchoolTypeAccountability AS ResponsibleSchoolType_ResponsibleSchoolTypeAccountability
	, ResponsibleSchoolType.ResponsibleSchoolTypeAccountabilityCode AS ResponsibleSchoolType_ResponsibleSchoolTypeAccountabilityCode
	, ResponsibleSchoolType.ResponsibleSchoolTypeAccountabilityDescription AS ResponsibleSchoolType_ResponsibleSchoolTypeAccountabilityDescription
	, ResponsibleSchoolType.ResponsibleSchoolTypeAttendance AS ResponsibleSchoolType_ResponsibleSchoolTypeAttendance
	, ResponsibleSchoolType.ResponsibleSchoolTypeAttendanceCode AS ResponsibleSchoolType_ResponsibleSchoolTypeAttendanceCode
	, ResponsibleSchoolType.ResponsibleSchoolTypeAttendanceDescription AS ResponsibleSchoolType_ResponsibleSchoolTypeAttendanceDescription
	, ResponsibleSchoolType.ResponsibleSchoolTypeFunding AS ResponsibleSchoolType_ResponsibleSchoolTypeFunding
	, ResponsibleSchoolType.ResponsibleSchoolTypeFundingCode AS ResponsibleSchoolType_ResponsibleSchoolTypeFundingCode
	, ResponsibleSchoolType.ResponsibleSchoolTypeFundingDescription AS ResponsibleSchoolType_ResponsibleSchoolTypeFundingDescription
	, ResponsibleSchoolType.ResponsibleSchoolTypeGraduation AS ResponsibleSchoolType_ResponsibleSchoolTypeGraduation
	, ResponsibleSchoolType.ResponsibleSchoolTypeGraduationCode AS ResponsibleSchoolType_ResponsibleSchoolTypeGraduationCode
	, ResponsibleSchoolType.ResponsibleSchoolTypeGraduationDescription AS ResponsibleSchoolType_ResponsibleSchoolTypeGraduationDescription
	, ResponsibleSchoolType.ResponsibleSchoolTypeIndividualizedEducationProgram AS ResponsibleSchoolType_ResponsibleSchoolTypeIndividualizedEducationProgram
	, ResponsibleSchoolType.ResponsibleSchoolTypeIndividualizedEducationProgramCode AS ResponsibleSchoolType_ResponsibleSchoolTypeIndividualizedEducationProgramCode
	, ResponsibleSchoolType.ResponsibleSchoolTypeIndividualizedEducationProgramDescription AS ResponsibleSchoolType_ResponsibleSchoolTypeIndividualizedEducationProgramDescription
	, ResponsibleSchoolType.ResponsibleSchoolTypeTransportation AS ResponsibleSchoolType_ResponsibleSchoolTypeTransportation
	, ResponsibleSchoolType.ResponsibleSchoolTypeTransportationCode AS ResponsibleSchoolType_ResponsibleSchoolTypeTransportationCode
	, ResponsibleSchoolType.ResponsibleSchoolTypeTransportationDescription AS ResponsibleSchoolType_ResponsibleSchoolTypeTransportationDescription
	, ResponsibleSchoolType.ResponsibleSchoolTypeIepServiceProvider AS ResponsibleSchoolType_ResponsibleSchoolTypeIepServiceProvider
	, ResponsibleSchoolType.ResponsibleSchoolTypeIepServiceProviderCode AS ResponsibleSchoolType_ResponsibleSchoolTypeIepServiceProviderCode
	, ResponsibleSchoolType.ResponsibleSchoolTypeIepServiceProviderDescription AS ResponsibleSchoolType_ResponsibleSchoolTypeIepServiceProviderDescription
	, LeaMembershipResident.IeuOrganizationName AS LeaMembershipResident_IeuOrganizationName
	, LeaMembershipResident.IeuOrganizationIdentifierSea AS LeaMembershipResident_IeuOrganizationIdentifierSea
	, LeaMembershipResident.StateAnsiCode AS LeaMembershipResident_StateAnsiCode
	, LeaMembershipResident.StateAbbreviationCode AS LeaMembershipResident_StateAbbreviationCode
	, LeaMembershipResident.StateAbbreviationDescription AS LeaMembershipResident_StateAbbreviationDescription
	, LeaMembershipResident.SeaOrganizationName AS LeaMembershipResident_SeaOrganizationName
	, LeaMembershipResident.SeaOrganizationIdentifierSea AS LeaMembershipResident_SeaOrganizationIdentifierSea
	, LeaMembershipResident.LeaOrganizationName AS LeaMembershipResident_LeaOrganizationName
	, LeaMembershipResident.LeaIdentifierNces AS LeaMembershipResident_LeaIdentifierNces
	, LeaMembershipResident.LeaIdentifierSea AS LeaMembershipResident_LeaIdentifierSea
	, LeaMembershipResident.PriorLeaIdentifierSea AS LeaMembershipResident_PriorLeaIdentifierSea
	, LeaMembershipResident.ReportedFederally AS LeaMembershipResident_ReportedFederally
	, LeaMembershipResident.LeaTypeCode AS LeaMembershipResident_LeaTypeCode
	, LeaMembershipResident.LeaTypeDescription AS LeaMembershipResident_LeaTypeDescription
	, LeaMembershipResident.LeaTypeEdFactsCode AS LeaMembershipResident_LeaTypeEdFactsCode
	, LeaMembershipResident.MailingAddressStreetNumberAndName AS LeaMembershipResident_MailingAddressStreetNumberAndName
	, LeaMembershipResident.MailingAddressApartmentRoomOrSuiteNumber AS LeaMembershipResident_MailingAddressApartmentRoomOrSuiteNumber
	, LeaMembershipResident.MailingAddressCity AS LeaMembershipResident_MailingAddressCity
	, LeaMembershipResident.MailingAddressPostalCode AS LeaMembershipResident_MailingAddressPostalCode
	, LeaMembershipResident.MailingAddressStateAbbreviation AS LeaMembershipResident_MailingAddressStateAbbreviation
	, LeaMembershipResident.MailingAddressCountyName AS LeaMembershipResident_MailingAddressCountyName
	, LeaMembershipResident.PhysicalAddressStreetNumberAndName AS LeaMembershipResident_PhysicalAddressStreetNumberAndName
	, LeaMembershipResident.PhysicalAddressApartmentRoomOrSuiteNumber AS LeaMembershipResident_PhysicalAddressApartmentRoomOrSuiteNumber
	, LeaMembershipResident.PhysicalAddressCity AS LeaMembershipResident_PhysicalAddressCity
	, LeaMembershipResident.PhysicalAddressPostalCode AS LeaMembershipResident_PhysicalAddressPostalCode
	, LeaMembershipResident.PhysicalAddressStateAbbreviation AS LeaMembershipResident_PhysicalAddressStateAbbreviation
	, LeaMembershipResident.PhysicalAddressCountyName AS LeaMembershipResident_PhysicalAddressCountyName
	, LeaMembershipResident.Longitude AS LeaMembershipResident_Longitude
	, LeaMembershipResident.Latitude AS LeaMembershipResident_Latitude
	, LeaMembershipResident.TelephoneNumber AS LeaMembershipResident_TelephoneNumber
	, LeaMembershipResident.WebSiteAddress AS LeaMembershipResident_WebSiteAddress
	, LeaMembershipResident.OutOfStateIndicator AS LeaMembershipResident_OutOfStateIndicator
	, LeaMembershipResident.LeaOperationalStatus AS LeaMembershipResident_LeaOperationalStatus
	, LeaMembershipResident.LeaOperationalStatusEdFactsCode AS LeaMembershipResident_LeaOperationalStatusEdFactsCode
	, LeaMembershipResident.OperationalStatusEffectiveDate AS LeaMembershipResident_OperationalStatusEffectiveDate
	, LeaMembershipResident.CharterLeaStatus AS LeaMembershipResident_CharterLeaStatus
	, LeaMembershipResident.ReconstitutedStatus AS LeaMembershipResident_ReconstitutedStatus
	, LeaMembershipResident.McKinneyVentoSubgrantRecipient AS LeaMembershipResident_McKinneyVentoSubgrantRecipient
	, LeaMembershipResident.RecordStartDateTime AS LeaMembershipResident_RecordStartDateTime
	, LeaMembershipResident.RecordEndDateTime AS LeaMembershipResident_RecordEndDateTime
	, RecordStatus.RecordStatusTypeCode AS RecordStatus_RecordStatusTypeCode
	, RecordStatus.RecordStatusTypeDescription AS RecordStatus_RecordStatusTypeDescription
	, RecordStatus.RecordStatusCreatorEntityCode AS RecordStatus_RecordStatusCreatorEntityCode
	, RecordStatus.RecordStatusCreatorEntityDescription AS RecordStatus_RecordStatusCreatorEntityDescription
FROM RDS.FactK12StudentEnrollments fact
JOIN RDS.DimSchoolYears SchoolYear
	ON fact.SchoolYearId = SchoolYear.DimSchoolYearId
JOIN RDS.DimDates CountDate
	ON fact.CountDateId = CountDate.DimDateId
JOIN RDS.DimDataCollections DataCollection
	ON fact.DataCollectionId = DataCollection.DimDataCollectionId
JOIN RDS.DimSeas Sea
	ON fact.SeaId = Sea.DimSeaId
JOIN RDS.DimIeus Ieu
	ON fact.IeuId = Ieu.DimIeuId
JOIN RDS.DimPeople K12Student
	ON fact.K12StudentId = K12Student.DimPersonId
JOIN RDS.DimPeople_Current K12Student_Current
	ON fact.K12Student_CurrentId = K12Student_Current.DimPersonId
JOIN RDS.DimLeas LeaAccountability
	ON fact.LeaAccountabilityId = LeaAccountability.DimLeaId
JOIN RDS.DimLeas LeaAttendance
	ON fact.LeaAttendanceId = LeaAttendance.DimLeaId
JOIN RDS.DimLeas LeaFunding
	ON fact.LeaFundingId = LeaFunding.DimLeaId
JOIN RDS.DimLeas LeaGraduation
	ON fact.LeaGraduationId = LeaGraduation.DimLeaId
JOIN RDS.DimLeas LeaIndividualizedEducationProgram
	ON fact.LeaIndividualizedEducationProgramId = LeaIndividualizedEducationProgram.DimLeaId
JOIN RDS.DimK12Schools K12School
	ON fact.K12SchoolId = K12School.DimK12SchoolId
JOIN RDS.DimEducationOrganizationNetworks EducationOrganizationNetwork
	ON fact.EducationOrganizationNetworkId = EducationOrganizationNetwork.DimEducationOrganizationNetworkId
JOIN RDS.DimSchoolYears CohortGraduationYear
	ON fact.CohortGraduationYearId = CohortGraduationYear.DimSchoolYearId
JOIN RDS.DimSchoolYears CohortYear
	ON fact.CohortYearId = CohortYear.DimSchoolYearId
JOIN RDS.DimCteStatuses CteStatus
	ON fact.CteStatusId = CteStatus.DimCteStatusId
JOIN RDS.DimGradeLevels EntryGradeLevel
	ON fact.EntryGradeLevelId = EntryGradeLevel.DimGradeLevelId
JOIN RDS.DimGradeLevels ExitGradeLevel
	ON fact.ExitGradeLevelId = ExitGradeLevel.DimGradeLevelId
JOIN RDS.DimDates EnrollmentEntryDate
	ON fact.EnrollmentEntryDateId = EnrollmentEntryDate.DimDateId
JOIN RDS.DimDates EnrollmentExitDate
	ON fact.EnrollmentExitDateId = EnrollmentExitDate.DimDateId
JOIN RDS.DimEnglishLearnerStatuses EnglishLearnerStatus
	ON fact.EnglishLearnerStatusId = EnglishLearnerStatus.DimEnglishLearnerStatusId
JOIN RDS.DimK12EnrollmentStatuses K12EnrollmentStatus
	ON fact.K12EnrollmentStatusId = K12EnrollmentStatus.DimK12EnrollmentStatusId
JOIN RDS.DimK12RetentionStatuses K12RetentionStatus
	ON fact.K12RetentionStatusId = K12RetentionStatus.DimK12RetentionStatusId
JOIN RDS.DimK12DropoutStatuses K12DropoutStatus
	ON fact.K12DropoutStatusId = K12DropoutStatus.DimK12DropoutStatusId
JOIN RDS.DimCteOutcomeIndicators CteOutcomeIndicator
	ON fact.CteOutcomeIndicatorId = CteOutcomeIndicator.DimCteOutcomeIndicatorId
JOIN RDS.DimPsEnrollmentStatuses PsEnrollmentStatus
	ON fact.PsEnrollmentStatusId = PsEnrollmentStatus.DimPsEnrollmentStatusId
JOIN RDS.DimK12Demographics K12Demographic
	ON fact.K12DemographicId = K12Demographic.DimK12DemographicId
JOIN RDS.DimIdeaStatuses IdeaStatus
	ON fact.IdeaStatusId = IdeaStatus.DimIdeaStatusId
JOIN RDS.DimDisabilityStatuses DisabilityStatus
	ON fact.DisabilityStatusId = DisabilityStatus.DimDisabilityStatusId
JOIN RDS.DimHomelessnessStatuses HomelessnessStatus
	ON fact.HomelessnessStatusId = HomelessnessStatus.DimHomelessnessStatusId
JOIN RDS.DimEconomicallyDisadvantagedStatuses EconomicallyDisadvantagedStatus
	ON fact.EconomicallyDisadvantagedStatusId = EconomicallyDisadvantagedStatus.DimEconomicallyDisadvantagedStatusId
JOIN RDS.DimFosterCareStatuses FosterCareStatus
	ON fact.FosterCareStatusId = FosterCareStatus.DimFosterCareStatusId
JOIN RDS.DimImmigrantStatuses ImmigrantStatus
	ON fact.ImmigrantStatusId = ImmigrantStatus.DimImmigrantStatusId
JOIN RDS.DimLanguages LanguageHome
	ON fact.LanguageHomeId = LanguageHome.DimLanguageId
JOIN RDS.DimGiftedAndTalentedStatuses GiftedAndTalentedStatus
	ON fact.GiftedAndTalentedStatusId = GiftedAndTalentedStatus.DimGiftedAndTalentedStatusId
JOIN RDS.DimLanguages LanguageNative
	ON fact.LanguageNativeId = LanguageNative.DimLanguageId
JOIN RDS.DimMigrantStatuses MigrantStatus
	ON fact.MigrantStatusId = MigrantStatus.DimMigrantStatusId
JOIN RDS.DimMilitaryStatuses MilitaryStatus
	ON fact.MilitaryStatusId = MilitaryStatus.DimMilitaryStatusId
JOIN RDS.DimNOrDStatuses NOrDStatus
	ON fact.NOrDStatusId = NOrDStatus.DimNOrDStatusId
JOIN RDS.DimIdeaDisabilityTypes PrimaryDisabilityType
	ON fact.PrimaryDisabilityTypeId = PrimaryDisabilityType.DimIdeaDisabilityTypeId
JOIN RDS.DimIdeaDisabilityTypes SecondaryDisabilityType
	ON fact.SecondaryDisabilityTypeId = SecondaryDisabilityType.DimIdeaDisabilityTypeId
JOIN RDS.DimDates ProjectedGraduationDate
	ON fact.ProjectedGraduationDateId = ProjectedGraduationDate.DimDateId
JOIN RDS.DimDates StatusStartDateEconomicallyDisadvantaged
	ON fact.StatusStartDateEconomicallyDisadvantagedId = StatusStartDateEconomicallyDisadvantaged.DimDateId
JOIN RDS.DimDates StatusEndDateEconomicallyDisadvantaged
	ON fact.StatusEndDateEconomicallyDisadvantagedId = StatusEndDateEconomicallyDisadvantaged.DimDateId
JOIN RDS.DimDates StatusStartDateEnglishLearner
	ON fact.StatusStartDateEnglishLearnerId = StatusStartDateEnglishLearner.DimDateId
JOIN RDS.DimDates StatusEndDateEnglishLearner
	ON fact.StatusEndDateEnglishLearnerId = StatusEndDateEnglishLearner.DimDateId
JOIN RDS.DimDates StatusStartDateHomelessness
	ON fact.StatusStartDateHomelessnessId = StatusStartDateHomelessness.DimDateId
JOIN RDS.DimDates StatusEndDateHomelessness
	ON fact.StatusEndDateHomelessnessId = StatusEndDateHomelessness.DimDateId
JOIN RDS.DimDates StatusStartDateIdea
	ON fact.StatusStartDateIdeaId = StatusStartDateIdea.DimDateId
JOIN RDS.DimDates StatusEndDateIdea
	ON fact.StatusEndDateIdeaId = StatusEndDateIdea.DimDateId
JOIN RDS.DimDates StatusStartDateMigrant
	ON fact.StatusStartDateMigrantId = StatusStartDateMigrant.DimDateId
JOIN RDS.DimDates StatusEndDateMigrant
	ON fact.StatusEndDateMigrantId = StatusEndDateMigrant.DimDateId
JOIN RDS.DimDates StatusStartDateMilitaryConnectedStudent
	ON fact.StatusStartDateMilitaryConnectedStudentId = StatusStartDateMilitaryConnectedStudent.DimDateId
JOIN RDS.DimDates StatusEndDateMilitaryConnectedStudent
	ON fact.StatusEndDateMilitaryConnectedStudentId = StatusEndDateMilitaryConnectedStudent.DimDateId
JOIN RDS.DimDates StatusStartDatePerkinsEnglishLearner
	ON fact.StatusStartDatePerkinsEnglishLearnerId = StatusStartDatePerkinsEnglishLearner.DimDateId
JOIN RDS.DimDates StatusEndDatePerkinsEnglishLearner
	ON fact.StatusEndDatePerkinsEnglishLearnerId = StatusEndDatePerkinsEnglishLearner.DimDateId
JOIN RDS.DimDates StatusEndDateTitleIIIImmigrant
	ON fact.StatusEndDateTitleIIIImmigrantId = StatusEndDateTitleIIIImmigrant.DimDateId
JOIN RDS.DimDates StatusStartDateTitleIIIImmigrant
	ON fact.StatusStartDateTitleIIIImmigrantId = StatusStartDateTitleIIIImmigrant.DimDateId
JOIN RDS.DimTitleIIIStatuses TitleIIIStatus
	ON fact.TitleIIIStatusId = TitleIIIStatus.DimTitleIIIStatusId
JOIN RDS.DimTitleIStatuses TitleIStatus
	ON fact.TitleIStatusId = TitleIStatus.DimTitleIStatusId
JOIN RDS.DimResponsibleSchoolTypes ResponsibleSchoolType
	ON fact.ResponsibleSchoolTypeId = ResponsibleSchoolType.DimResponsibleSchoolTypeId
JOIN RDS.DimLeas LeaMembershipResident
	ON fact.LeaMembershipResidentId = LeaMembershipResident.DimLeaId
JOIN RDS.DimRecordStatuses RecordStatus
	ON fact.RecordStatusId = RecordStatus.DimRecordStatusId
