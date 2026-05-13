CREATE OR ALTER VIEW [RDS].[vwFactK12StaffEmploymentsParquet] AS
	SELECT fact.FactK12StaffEmploymentId
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
	, K12StaffStatus.SpecialEducationAgeGroupTaughtCode AS K12StaffStatus_SpecialEducationAgeGroupTaughtCode
	, K12StaffStatus.SpecialEducationAgeGroupTaughtDescription AS K12StaffStatus_SpecialEducationAgeGroupTaughtDescription
	, K12StaffStatus.SpecialEducationAgeGroupTaughtEdFactsCode AS K12StaffStatus_SpecialEducationAgeGroupTaughtEdFactsCode
	, K12StaffStatus.EdFactsCertificationStatusCode AS K12StaffStatus_EdFactsCertificationStatusCode
	, K12StaffStatus.EdFactsCertificationStatusDescription AS K12StaffStatus_EdFactsCertificationStatusDescription
	, K12StaffStatus.EdFactsCertificationStatusEdFactsCode AS K12StaffStatus_EdFactsCertificationStatusEdFactsCode
	, K12StaffStatus.HighlyQualifiedTeacherIndicatorCode AS K12StaffStatus_HighlyQualifiedTeacherIndicatorCode
	, K12StaffStatus.HighlyQualifiedTeacherIndicatorDescription AS K12StaffStatus_HighlyQualifiedTeacherIndicatorDescription
	, K12StaffStatus.HighlyQualifiedTeacherIndicatorEdFactsCode AS K12StaffStatus_HighlyQualifiedTeacherIndicatorEdFactsCode
	, K12StaffStatus.EdFactsTeacherInexperiencedStatusCode AS K12StaffStatus_EdFactsTeacherInexperiencedStatusCode
	, K12StaffStatus.EdFactsTeacherInexperiencedStatusDescription AS K12StaffStatus_EdFactsTeacherInexperiencedStatusDescription
	, K12StaffStatus.EdFactsTeacherInexperiencedStatusEdFactsCode AS K12StaffStatus_EdFactsTeacherInexperiencedStatusEdFactsCode
	, K12StaffStatus.EdFactsTeacherOutOfFieldStatusCode AS K12StaffStatus_EdFactsTeacherOutOfFieldStatusCode
	, K12StaffStatus.EdFactsTeacherOutOfFieldStatusDescription AS K12StaffStatus_EdFactsTeacherOutOfFieldStatusDescription
	, K12StaffStatus.EdFactsTeacherOutOfFieldStatusEdFactsCode AS K12StaffStatus_EdFactsTeacherOutOfFieldStatusEdFactsCode
	, K12StaffStatus.SpecialEducationTeacherQualificationStatusCode AS K12StaffStatus_SpecialEducationTeacherQualificationStatusCode
	, K12StaffStatus.SpecialEducationTeacherQualificationStatusDescription AS K12StaffStatus_SpecialEducationTeacherQualificationStatusDescription
	, K12StaffStatus.SpecialEducationTeacherQualificationStatusEdFactsCode AS K12StaffStatus_SpecialEducationTeacherQualificationStatusEdFactsCode
	, K12StaffStatus.ParaprofessionalQualificationStatusCode AS K12StaffStatus_ParaprofessionalQualificationStatusCode
	, K12StaffStatus.ParaprofessionalQualificationStatusDescription AS K12StaffStatus_ParaprofessionalQualificationStatusDescription
	, K12StaffStatus.ParaprofessionalQualificationStatusEdFactsCode AS K12StaffStatus_ParaprofessionalQualificationStatusEdFactsCode
	, K12StaffStatus.SpecialEducationRelatedServicesPersonnelCode AS K12StaffStatus_SpecialEducationRelatedServicesPersonnelCode
	, K12StaffStatus.SpecialEducationRelatedServicesPersonnelDescription AS K12StaffStatus_SpecialEducationRelatedServicesPersonnelDescription
	, K12StaffStatus.CTEInstructorIndustryCertificationCode AS K12StaffStatus_CTEInstructorIndustryCertificationCode
	, K12StaffStatus.CTEInstructorIndustryCertificationDescription AS K12StaffStatus_CTEInstructorIndustryCertificationDescription
	, K12StaffStatus.SpecialEducationParaprofessionalCode AS K12StaffStatus_SpecialEducationParaprofessionalCode
	, K12StaffStatus.SpecialEducationParaprofessionalDescription AS K12StaffStatus_SpecialEducationParaprofessionalDescription
	, K12StaffStatus.SpecialEducationTeacherCode AS K12StaffStatus_SpecialEducationTeacherCode
	, K12StaffStatus.SpecialEducationTeacherDescription AS K12StaffStatus_SpecialEducationTeacherDescription
	, TeachingCredentialStatus.TeachingCredentialTypeCode AS TeachingCredentialStatus_TeachingCredentialTypeCode
	, TeachingCredentialStatus.TeachingCredentialTypeDescription AS TeachingCredentialStatus_TeachingCredentialTypeDescription
	, TeachingCredentialStatus.TeachingCredentialTypeEdFactsCode AS TeachingCredentialStatus_TeachingCredentialTypeEdFactsCode
	, TeachingCredentialStatus.TeachingCredentialBasisCode AS TeachingCredentialStatus_TeachingCredentialBasisCode
	, TeachingCredentialStatus.TeachingCredentialBasisDescription AS TeachingCredentialStatus_TeachingCredentialBasisDescription
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
	, Lea.ReportedFederally AS Lea_ReportedFederally
	, Lea.LeaTypeCode AS Lea_LeaTypeCode
	, Lea.LeaTypeDescription AS Lea_LeaTypeDescription
	, Lea.LeaTypeEdFactsCode AS Lea_LeaTypeEdFactsCode
	, Lea.MailingAddressStreetNumberAndName AS Lea_MailingAddressStreetNumberAndName
	, Lea.MailingAddressApartmentRoomOrSuiteNumber AS Lea_MailingAddressApartmentRoomOrSuiteNumber
	, Lea.MailingAddressCity AS Lea_MailingAddressCity
	, Lea.MailingAddressPostalCode AS Lea_MailingAddressPostalCode
	, Lea.MailingAddressStateAbbreviation AS Lea_MailingAddressStateAbbreviation
	, Lea.MailingAddressCountyName AS Lea_MailingAddressCountyName
	, Lea.PhysicalAddressStreetNumberAndName AS Lea_PhysicalAddressStreetNumberAndName
	, Lea.PhysicalAddressApartmentRoomOrSuiteNumber AS Lea_PhysicalAddressApartmentRoomOrSuiteNumber
	, Lea.PhysicalAddressCity AS Lea_PhysicalAddressCity
	, Lea.PhysicalAddressPostalCode AS Lea_PhysicalAddressPostalCode
	, Lea.PhysicalAddressStateAbbreviation AS Lea_PhysicalAddressStateAbbreviation
	, Lea.PhysicalAddressCountyName AS Lea_PhysicalAddressCountyName
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
	, Lea.RecordStartDateTime AS Lea_RecordStartDateTime
	, Lea.RecordEndDateTime AS Lea_RecordEndDateTime
	, Employer.EmployerOrganizationName AS Employer_EmployerOrganizationName
	, Employer.EmployerOrganizationIdentifierSea AS Employer_EmployerOrganizationIdentifierSea
	, Employer.SeaOrganizationName AS Employer_SeaOrganizationName
	, Employer.SeaOrganizationIdentifierSea AS Employer_SeaOrganizationIdentifierSea
	, Employer.StateAnsiCode AS Employer_StateAnsiCode
	, Employer.StateAbbreviationCode AS Employer_StateAbbreviationCode
	, Employer.StateAbbreviationDescription AS Employer_StateAbbreviationDescription
	, Employer.MailingAddressStreetNumberAndName AS Employer_MailingAddressStreetNumberAndName
	, Employer.MailingAddressApartmentRoomOrSuiteNumber AS Employer_MailingAddressApartmentRoomOrSuiteNumber
	, Employer.MailingAddressCity AS Employer_MailingAddressCity
	, Employer.MailingAddressStateAbbreviation AS Employer_MailingAddressStateAbbreviation
	, Employer.MailingAddressPostalCode AS Employer_MailingAddressPostalCode
	, Employer.MailingAddressCountyAnsiCodeCode AS Employer_MailingAddressCountyAnsiCodeCode
	, Employer.OutOfStateIndicator AS Employer_OutOfStateIndicator
	, Employer.OrganizationOperationalStatus AS Employer_OrganizationOperationalStatus
	, Employer.OperationalStatusEffectiveDate AS Employer_OperationalStatusEffectiveDate
	, Employer.PhysicalAddressStreetNumberAndName AS Employer_PhysicalAddressStreetNumberAndName
	, Employer.PhysicalAddressApartmentRoomOrSuiteNumber AS Employer_PhysicalAddressApartmentRoomOrSuiteNumber
	, Employer.PhysicalAddressCity AS Employer_PhysicalAddressCity
	, Employer.PhysicalAddressPostalCode AS Employer_PhysicalAddressPostalCode
	, Employer.PhysicalAddressStateAbbreviation AS Employer_PhysicalAddressStateAbbreviation
	, Employer.PhysicalAddressCountyAnsiCodeCode AS Employer_PhysicalAddressCountyAnsiCodeCode
	, Employer.TelephoneNumber AS Employer_TelephoneNumber
	, Employer.WebSiteAddress AS Employer_WebSiteAddress
	, Employer.OrganizationRegionGeoJson AS Employer_OrganizationRegionGeoJson
	, Employer.Latitude AS Employer_Latitude
	, Employer.Longitude AS Employer_Longitude
	, Employer.RecordStartDateTime AS Employer_RecordStartDateTime
	, Employer.RecordEndDateTime AS Employer_RecordEndDateTime
	, K12Staff.FirstName AS K12Staff_FirstName
	, K12Staff.MiddleName AS K12Staff_MiddleName
	, K12Staff.LastOrSurname AS K12Staff_LastOrSurname
	, K12Staff.Birthdate AS K12Staff_Birthdate
	, K12Staff.ELChildChildIdentifierState AS K12Staff_ELChildChildIdentifierState
	, K12Staff.K12StudentStudentIdentifierState AS K12Staff_K12StudentStudentIdentifierState
	, K12Staff.K12StudentStudentIdentifierDistrict AS K12Staff_K12StudentStudentIdentifierDistrict
	, K12Staff.K12StudentStudentIdentifierNationalMigrant AS K12Staff_K12StudentStudentIdentifierNationalMigrant
	, K12Staff.PsStudentStudentIdentifierState AS K12Staff_PsStudentStudentIdentifierState
	, K12Staff.AeStudentStudentIdentifierState AS K12Staff_AeStudentStudentIdentifierState
	, K12Staff.WorkforceProgramParticipantPersonIdentifierState AS K12Staff_WorkforceProgramParticipantPersonIdentifierState
	, K12Staff.ELStaffStaffMemberIdentifierState AS K12Staff_ELStaffStaffMemberIdentifierState
	, K12Staff.K12StaffStaffMemberIdentifierState AS K12Staff_K12StaffStaffMemberIdentifierState
	, K12Staff.K12StaffStaffMemberIdentifierDistrict AS K12Staff_K12StaffStaffMemberIdentifierDistrict
	, K12Staff.PsStaffStaffMemberIdentifierState AS K12Staff_PsStaffStaffMemberIdentifierState
	, K12Staff.PersonIdentifierDriversLicense AS K12Staff_PersonIdentifierDriversLicense
	, K12Staff.PersonIdentifierSSN AS K12Staff_PersonIdentifierSSN
	, K12Staff.PersonIdentifierState AS K12Staff_PersonIdentifierState
	, K12Staff.StudentIdentifierState AS K12Staff_StudentIdentifierState
	, K12Staff.IsActiveELChild AS K12Staff_IsActiveELChild
	, K12Staff.IsActiveK12Student AS K12Staff_IsActiveK12Student
	, K12Staff.IsActivePsStudent AS K12Staff_IsActivePsStudent
	, K12Staff.IsActiveAeStudent AS K12Staff_IsActiveAeStudent
	, K12Staff.IsActiveWorkforceProgramParticipant AS K12Staff_IsActiveWorkforceProgramParticipant
	, K12Staff.IsActiveELStaff AS K12Staff_IsActiveELStaff
	, K12Staff.IsActiveK12Staff AS K12Staff_IsActiveK12Staff
	, K12Staff.IsActivePsStaff AS K12Staff_IsActivePsStaff
	, K12Staff.RecordStartDateTime AS K12Staff_RecordStartDateTime
	, K12Staff.RecordEndDateTime AS K12Staff_RecordEndDateTime
	, K12Staff.ElectronicMailAddressHome AS K12Staff_ElectronicMailAddressHome
	, K12Staff.ElectronicMailAddressOrganizational AS K12Staff_ElectronicMailAddressOrganizational
	, K12Staff.ElectronicMailAddressWork AS K12Staff_ElectronicMailAddressWork
	, K12Staff.TelephoneNumberFax AS K12Staff_TelephoneNumberFax
	, K12Staff.TelephoneNumberHome AS K12Staff_TelephoneNumberHome
	, K12Staff.TelephoneNumberMobile AS K12Staff_TelephoneNumberMobile
	, K12Staff.TelephoneNumberWork AS K12Staff_TelephoneNumberWork
	, K12Staff.PersonalTitleOrPrefix AS K12Staff_PersonalTitleOrPrefix
	, K12Staff.PositionTitle AS K12Staff_PositionTitle
	, K12Staff.GenerationCodeOrSuffix AS K12Staff_GenerationCodeOrSuffix
	, K12Staff.HighestLevelOfEducationCompletedCode AS K12Staff_HighestLevelOfEducationCompletedCode
	, K12Staff.HighestLevelOfEducationCompletedDescription AS K12Staff_HighestLevelOfEducationCompletedDescription
	, K12Staff_Current.FirstName AS K12Staff_Current_FirstName
	, K12Staff_Current.MiddleName AS K12Staff_Current_MiddleName
	, K12Staff_Current.LastOrSurname AS K12Staff_Current_LastOrSurname
	, K12Staff_Current.Birthdate AS K12Staff_Current_Birthdate
	, K12Staff_Current.ELChildChildIdentifierState AS K12Staff_Current_ELChildChildIdentifierState
	, K12Staff_Current.K12StudentStudentIdentifierState AS K12Staff_Current_K12StudentStudentIdentifierState
	, K12Staff_Current.K12StudentStudentIdentifierDistrict AS K12Staff_Current_K12StudentStudentIdentifierDistrict
	, K12Staff_Current.K12StudentStudentIdentifierNationalMigrant AS K12Staff_Current_K12StudentStudentIdentifierNationalMigrant
	, K12Staff_Current.PsStudentStudentIdentifierState AS K12Staff_Current_PsStudentStudentIdentifierState
	, K12Staff_Current.AeStudentStudentIdentifierState AS K12Staff_Current_AeStudentStudentIdentifierState
	, K12Staff_Current.WorkforceProgramParticipantPersonIdentifierState AS K12Staff_Current_WorkforceProgramParticipantPersonIdentifierState
	, K12Staff_Current.ELStaffStaffMemberIdentifierState AS K12Staff_Current_ELStaffStaffMemberIdentifierState
	, K12Staff_Current.K12StaffStaffMemberIdentifierState AS K12Staff_Current_K12StaffStaffMemberIdentifierState
	, K12Staff_Current.K12StaffStaffMemberIdentifierDistrict AS K12Staff_Current_K12StaffStaffMemberIdentifierDistrict
	, K12Staff_Current.PsStaffStaffMemberIdentifierState AS K12Staff_Current_PsStaffStaffMemberIdentifierState
	, K12Staff_Current.PersonIdentifierDriversLicense AS K12Staff_Current_PersonIdentifierDriversLicense
	, K12Staff_Current.PersonIdentifierSSN AS K12Staff_Current_PersonIdentifierSSN
	, K12Staff_Current.PersonIdentifierState AS K12Staff_Current_PersonIdentifierState
	, K12Staff_Current.StudentIdentifierState AS K12Staff_Current_StudentIdentifierState
	, K12Staff_Current.IsActiveELChild AS K12Staff_Current_IsActiveELChild
	, K12Staff_Current.IsActiveK12Student AS K12Staff_Current_IsActiveK12Student
	, K12Staff_Current.IsActivePsStudent AS K12Staff_Current_IsActivePsStudent
	, K12Staff_Current.IsActiveAeStudent AS K12Staff_Current_IsActiveAeStudent
	, K12Staff_Current.IsActiveWorkforceProgramParticipant AS K12Staff_Current_IsActiveWorkforceProgramParticipant
	, K12Staff_Current.IsActiveELStaff AS K12Staff_Current_IsActiveELStaff
	, K12Staff_Current.IsActiveK12Staff AS K12Staff_Current_IsActiveK12Staff
	, K12Staff_Current.IsActivePsStaff AS K12Staff_Current_IsActivePsStaff
	, K12Staff_Current.ElectronicMailAddressHome AS K12Staff_Current_ElectronicMailAddressHome
	, K12Staff_Current.ElectronicMailAddressOrganizational AS K12Staff_Current_ElectronicMailAddressOrganizational
	, K12Staff_Current.ElectronicMailAddressWork AS K12Staff_Current_ElectronicMailAddressWork
	, K12Staff_Current.TelephoneNumberFax AS K12Staff_Current_TelephoneNumberFax
	, K12Staff_Current.TelephoneNumberHome AS K12Staff_Current_TelephoneNumberHome
	, K12Staff_Current.TelephoneNumberMobile AS K12Staff_Current_TelephoneNumberMobile
	, K12Staff_Current.TelephoneNumberWork AS K12Staff_Current_TelephoneNumberWork
	, K12Staff_Current.PersonalTitleOrPrefix AS K12Staff_Current_PersonalTitleOrPrefix
	, K12Staff_Current.PositionTitle AS K12Staff_Current_PositionTitle
	, K12Staff_Current.GenerationCodeOrSuffix AS K12Staff_Current_GenerationCodeOrSuffix
	, K12Staff_Current.HighestLevelOfEducationCompletedCode AS K12Staff_Current_HighestLevelOfEducationCompletedCode
	, K12Staff_Current.HighestLevelOfEducationCompletedDescription AS K12Staff_Current_HighestLevelOfEducationCompletedDescription
	, OnetSocOccupationType.OnetSocOccupationTypeCode AS OnetSocOccupationType_OnetSocOccupationTypeCode
	, OnetSocOccupationType.OnetSocOccupationTypeDescription AS OnetSocOccupationType_OnetSocOccupationTypeDescription
	, StandardOccupationalClassification.StandardOccupationalClassificationCode AS StandardOccupationalClassification_StandardOccupationalClassificationCode
	, StandardOccupationalClassification.StandardOccupationalClassificationDescription AS StandardOccupationalClassification_StandardOccupationalClassificationDescription
	, K12StaffCategory.K12StaffClassificationCode AS K12StaffCategory_K12StaffClassificationCode
	, K12StaffCategory.K12StaffClassificationDescription AS K12StaffCategory_K12StaffClassificationDescription
	, K12StaffCategory.K12StaffClassificationEdFactsCode AS K12StaffCategory_K12StaffClassificationEdFactsCode
	, K12StaffCategory.SpecialEducationSupportServicesCategoryCode AS K12StaffCategory_SpecialEducationSupportServicesCategoryCode
	, K12StaffCategory.SpecialEducationSupportServicesCategoryDescription AS K12StaffCategory_SpecialEducationSupportServicesCategoryDescription
	, K12StaffCategory.SpecialEducationSupportServicesCategoryEdFactsCode AS K12StaffCategory_SpecialEducationSupportServicesCategoryEdFactsCode
	, K12StaffCategory.TitleIProgramStaffCategoryCode AS K12StaffCategory_TitleIProgramStaffCategoryCode
	, K12StaffCategory.TitleIProgramStaffCategoryDescription AS K12StaffCategory_TitleIProgramStaffCategoryDescription
	, K12StaffCategory.TitleIProgramStaffCategoryEdFactsCode AS K12StaffCategory_TitleIProgramStaffCategoryEdFactsCode
	, K12StaffCategory.MigrantEducationProgramStaffCategoryCode AS K12StaffCategory_MigrantEducationProgramStaffCategoryCode
	, K12StaffCategory.MigrantEducationProgramStaffCategoryDescription AS K12StaffCategory_MigrantEducationProgramStaffCategoryDescription
	, K12StaffCategory.ProfessionalEducationalJobClassificationCode AS K12StaffCategory_ProfessionalEducationalJobClassificationCode
	, K12StaffCategory.ProfessionalEducationalJobClassificationDescription AS K12StaffCategory_ProfessionalEducationalJobClassificationDescription
	, fact.YearsOfPriorTeachingExperience
	, fact.YearsOfPriorProfessionalExperience
	, fact.YearsOfTotalExperience
	, fact.YearsofPriorAdultEducationTeachingExperience
	, K12EmploymentStatus.EmploymentStatusCode AS K12EmploymentStatus_EmploymentStatusCode
	, K12EmploymentStatus.EmploymentStatusDescription AS K12EmploymentStatus_EmploymentStatusDescription
	, K12EmploymentStatus.EmploymentSeparationReasonCode AS K12EmploymentStatus_EmploymentSeparationReasonCode
	, K12EmploymentStatus.EmploymentSeparationReasonDescription AS K12EmploymentStatus_EmploymentSeparationReasonDescription
	, K12EmploymentStatus.EmploymentSeparationTypeCode AS K12EmploymentStatus_EmploymentSeparationTypeCode
	, K12EmploymentStatus.EmploymentSeparationTypeDescription AS K12EmploymentStatus_EmploymentSeparationTypeDescription
	, K12EmploymentStatus.TitleITargetedAssistanceStaffFundedCode AS K12EmploymentStatus_TitleITargetedAssistanceStaffFundedCode
	, K12EmploymentStatus.TitleITargetedAssistanceStaffFundedDescription AS K12EmploymentStatus_TitleITargetedAssistanceStaffFundedDescription
	, K12EmploymentStatus.MEPPersonnelIndicatorCode AS K12EmploymentStatus_MEPPersonnelIndicatorCode
	, K12EmploymentStatus.MEPPersonnelIndicatorDescription AS K12EmploymentStatus_MEPPersonnelIndicatorDescription
	, K12EmploymentStatus.SalaryForTeachingAssignmentOnlyIndicatorCode AS K12EmploymentStatus_SalaryForTeachingAssignmentOnlyIndicatorCode
	, K12EmploymentStatus.SalaryForTeachingAssignmentOnlyIndicatorDescription AS K12EmploymentStatus_SalaryForTeachingAssignmentOnlyIndicatorDescription
	, K12JobPosition.JobPositionIdentifierSea AS K12JobPosition_JobPositionIdentifierSea
	, K12JobPosition.JobPositionIdentifierLea AS K12JobPosition_JobPositionIdentifierLea
	, K12JobPosition.JobPositionIdentifierSchool AS K12JobPosition_JobPositionIdentifierSchool
	, K12JobPosition.PositionTitle AS K12JobPosition_PositionTitle
	, K12JobPosition.HourlyWage AS K12JobPosition_HourlyWage
	, K12JobPosition.StaffCompensationBaseSalary AS K12JobPosition_StaffCompensationBaseSalary
	, K12JobPositionStatus.JobPositionStatusCode AS K12JobPositionStatus_JobPositionStatusCode
	, K12JobPositionStatus.JobPositionStatusDescription AS K12JobPositionStatus_JobPositionStatusDescription
	, K12JobPositionStatus.JobPositionCancellationReasonCode AS K12JobPositionStatus_JobPositionCancellationReasonCode
	, K12JobPositionStatus.JobPositionCancellationReasonDescription AS K12JobPositionStatus_JobPositionCancellationReasonDescription
	, K12Job.JobIdentifierLea AS K12Job_JobIdentifierLea
	, K12Job.JobIdentifierSchool AS K12Job_JobIdentifierSchool
	, K12Job.JobIdentifierSea AS K12Job_JobIdentifierSea
	, K12Job.JobTitle AS K12Job_JobTitle
	, LeaJobClassification.LeaIdentifierSea AS LeaJobClassification_LeaIdentifierSea
	, LeaJobClassification.CodingSystemOranizationTypeCode AS LeaJobClassification_CodingSystemOranizationTypeCode
	, LeaJobClassification.CodingSystemOrganizationTypeDescription AS LeaJobClassification_CodingSystemOrganizationTypeDescription
	, LeaJobClassification.EducationJobTypeCode AS LeaJobClassification_EducationJobTypeCode
	, LeaJobClassification.EducationJobTypeDescription AS LeaJobClassification_EducationJobTypeDescription
	, LeaJobClassification.LocalJobFunctionCode AS LeaJobClassification_LocalJobFunctionCode
	, LeaJobClassification.LocalJobFunctionDescription AS LeaJobClassification_LocalJobFunctionDescription
	, LeaJobClassification.LocalJobFunctionDefinition AS LeaJobClassification_LocalJobFunctionDefinition
	, LeaJobClassification.LocalJobCategoryCode AS LeaJobClassification_LocalJobCategoryCode
	, LeaJobClassification.LocalJobCategoryDescription AS LeaJobClassification_LocalJobCategoryDescription
	, LeaJobClassification.LocalJobCategoryDefinition AS LeaJobClassification_LocalJobCategoryDefinition
	, LeaJobClassification.K12StaffClassificationCode AS LeaJobClassification_K12StaffClassificationCode
	, LeaJobClassification.K12StaffClassificationDescription AS LeaJobClassification_K12StaffClassificationDescription
	, LeaJobClassification.TitleIProgramStaffCategoryCode AS LeaJobClassification_TitleIProgramStaffCategoryCode
	, LeaJobClassification.TitleIProgramStaffCategoryDescription AS LeaJobClassification_TitleIProgramStaffCategoryDescription
	, LeaJobClassification.MigrantEducationProgramStaffCategoryCode AS LeaJobClassification_MigrantEducationProgramStaffCategoryCode
	, LeaJobClassification.MigrantEducationProgramStaffCategoryDescription AS LeaJobClassification_MigrantEducationProgramStaffCategoryDescription
	, LeaJobClassification.SpecialEducationSupportServicesCategoryCode AS LeaJobClassification_SpecialEducationSupportServicesCategoryCode
	, LeaJobClassification.SpecialEducationSupportServicesCategoryDescription AS LeaJobClassification_SpecialEducationSupportServicesCategoryDescription
	, LeaJobClassification.RecordStartDateTime AS LeaJobClassification_RecordStartDateTime
	, LeaJobClassification.RecordEndDateTime AS LeaJobClassification_RecordEndDateTime
	, SeaJobClassification.CodingSystemOrganizationTypeCode AS SeaJobClassification_CodingSystemOrganizationTypeCode
	, SeaJobClassification.CodingSystemOrganizationTypeDescription AS SeaJobClassification_CodingSystemOrganizationTypeDescription
	, SeaJobClassification.EducationJobTypeCode AS SeaJobClassification_EducationJobTypeCode
	, SeaJobClassification.EducationJobTypeDescription AS SeaJobClassification_EducationJobTypeDescription
	, SeaJobClassification.LocalJobFunctionCode AS SeaJobClassification_LocalJobFunctionCode
	, SeaJobClassification.LocalJobFunctionDescription AS SeaJobClassification_LocalJobFunctionDescription
	, SeaJobClassification.LocalJobFunctionDefinition AS SeaJobClassification_LocalJobFunctionDefinition
	, SeaJobClassification.LocalJobCategoryCode AS SeaJobClassification_LocalJobCategoryCode
	, SeaJobClassification.LocalJobCategoryDescription AS SeaJobClassification_LocalJobCategoryDescription
	, SeaJobClassification.LocalJobCategoryDefinition AS SeaJobClassification_LocalJobCategoryDefinition
	, SeaJobClassification.K12StaffClassificationCode AS SeaJobClassification_K12StaffClassificationCode
	, SeaJobClassification.K12StaffClassificationDescription AS SeaJobClassification_K12StaffClassificationDescription
	, SeaJobClassification.TitleIProgramStaffCategoryCode AS SeaJobClassification_TitleIProgramStaffCategoryCode
	, SeaJobClassification.TitleIProgramStaffCategoryDescription AS SeaJobClassification_TitleIProgramStaffCategoryDescription
	, SeaJobClassification.MigrantEducationProgramStaffCategoryCode AS SeaJobClassification_MigrantEducationProgramStaffCategoryCode
	, SeaJobClassification.MigrantEducationProgramStaffCategoryDescription AS SeaJobClassification_MigrantEducationProgramStaffCategoryDescription
	, SeaJobClassification.SpecialEducationSupportServicesCategoryCode AS SeaJobClassification_SpecialEducationSupportServicesCategoryCode
	, SeaJobClassification.SpecialEducationSupportServicesCategoryDescription AS SeaJobClassification_SpecialEducationSupportServicesCategoryDescription
	, SeaJobClassification.EvaluationRequiredIndicatorCode AS SeaJobClassification_EvaluationRequiredIndicatorCode
	, SeaJobClassification.EvaluationRequiredIndicatorDescription AS SeaJobClassification_EvaluationRequiredIndicatorDescription
	, SeaJobClassification.RecordStartDateTime AS SeaJobClassification_RecordStartDateTime
	, SeaJobClassification.RecordEndDateTime AS SeaJobClassification_RecordEndDateTime
	, fact.FullTimeEquivalency
	, EmploymentStartDate.DateValue AS EmploymentStartDate_DateValue
	, EmploymentStartDate.Day AS EmploymentStartDate_Day
	, EmploymentStartDate.DayOfWeek AS EmploymentStartDate_DayOfWeek
	, EmploymentStartDate.DayOfYear AS EmploymentStartDate_DayOfYear
	, EmploymentStartDate.Month AS EmploymentStartDate_Month
	, EmploymentStartDate.MonthName AS EmploymentStartDate_MonthName
	, EmploymentStartDate.SubmissionYear AS EmploymentStartDate_SubmissionYear
	, EmploymentStartDate.Year AS EmploymentStartDate_Year
	, EmploymentEndDate.DateValue AS EmploymentEndDate_DateValue
	, EmploymentEndDate.Day AS EmploymentEndDate_Day
	, EmploymentEndDate.DayOfWeek AS EmploymentEndDate_DayOfWeek
	, EmploymentEndDate.DayOfYear AS EmploymentEndDate_DayOfYear
	, EmploymentEndDate.Month AS EmploymentEndDate_Month
	, EmploymentEndDate.MonthName AS EmploymentEndDate_MonthName
	, EmploymentEndDate.SubmissionYear AS EmploymentEndDate_SubmissionYear
	, EmploymentEndDate.Year AS EmploymentEndDate_Year
	, HireDate.DateValue AS HireDate_DateValue
	, HireDate.Day AS HireDate_Day
	, HireDate.DayOfWeek AS HireDate_DayOfWeek
	, HireDate.DayOfYear AS HireDate_DayOfYear
	, HireDate.Month AS HireDate_Month
	, HireDate.MonthName AS HireDate_MonthName
	, HireDate.SubmissionYear AS HireDate_SubmissionYear
	, HireDate.Year AS HireDate_Year
	, K12Demographic.SexCode AS K12Demographic_SexCode
	, K12Demographic.SexDescription AS K12Demographic_SexDescription
	, K12Demographic.SexEdFactsCode AS K12Demographic_SexEdFactsCode
	, fact.ContractDaysOfServicePerYear
	, DataCollection.SourceSystemDataCollectionIdentifier AS DataCollection_SourceSystemDataCollectionIdentifier
	, DataCollection.SourceSystemName AS DataCollection_SourceSystemName
	, DataCollection.DataCollectionName AS DataCollection_DataCollectionName
	, DataCollection.DataCollectionDescription AS DataCollection_DataCollectionDescription
	, DataCollection.DataCollectionOpenDate AS DataCollection_DataCollectionOpenDate
	, DataCollection.DataCollectionCloseDate AS DataCollection_DataCollectionCloseDate
	, DataCollection.DataCollectionAcademicSchoolYear AS DataCollection_DataCollectionAcademicSchoolYear
	, DataCollection.DataCollectionSchoolYear AS DataCollection_DataCollectionSchoolYear
	, RecordStatus.RecordStatusTypeCode AS RecordStatus_RecordStatusTypeCode
	, RecordStatus.RecordStatusTypeDescription AS RecordStatus_RecordStatusTypeDescription
	, RecordStatus.RecordStatusCreatorEntityCode AS RecordStatus_RecordStatusCreatorEntityCode
	, RecordStatus.RecordStatusCreatorEntityDescription AS RecordStatus_RecordStatusCreatorEntityDescription
FROM RDS.FactK12StaffEmployments fact
JOIN RDS.DimSchoolYears SchoolYear
	ON fact.SchoolYearId = SchoolYear.DimSchoolYearId
JOIN RDS.DimDates CountDate
	ON fact.CountDateId = CountDate.DimDateId
JOIN RDS.DimK12StaffStatuses K12StaffStatus
	ON fact.K12StaffStatusId = K12StaffStatus.DimK12StaffStatusId
JOIN RDS.DimTeachingCredentialStatuses TeachingCredentialStatus
	ON fact.TeachingCredentialStatusId = TeachingCredentialStatus.DimTeachingCredentialStatusId
JOIN RDS.DimSeas Sea
	ON fact.SeaId = Sea.DimSeaId
JOIN RDS.DimIeus Ieu
	ON fact.IeuId = Ieu.DimIeuId
JOIN RDS.DimLeas Lea
	ON fact.LeaId = Lea.DimLeaId
JOIN RDS.DimEmployers Employer
	ON fact.EmployerId = Employer.DimEmployerId
JOIN RDS.DimPeople K12Staff
	ON fact.K12StaffId = K12Staff.DimPersonId
JOIN RDS.DimPeople_Current K12Staff_Current
	ON fact.K12Staff_CurrentId = K12Staff_Current.DimPersonId
JOIN RDS.DimOnetSocOccupationTypes OnetSocOccupationType
	ON fact.OnetSocOccupationTypeId = OnetSocOccupationType.DimOnetSocOccupationTypeId
JOIN RDS.DimStandardOccupationalClassifications StandardOccupationalClassification
	ON fact.StandardOccupationalClassificationId = StandardOccupationalClassification.DimStandardOccupationalClassificationId
JOIN RDS.DimK12StaffCategories K12StaffCategory
	ON fact.K12StaffCategoryId = K12StaffCategory.DimK12StaffCategoryId
JOIN RDS.DimK12EmploymentStatuses K12EmploymentStatus
	ON fact.K12EmploymentStatusId = K12EmploymentStatus.DimK12EmploymentStatusId
JOIN RDS.DimK12JobPositions K12JobPosition
	ON fact.K12JobPositionId = K12JobPosition.DimK12JobPositionId
JOIN RDS.DimK12JobPositionStatuses K12JobPositionStatus
	ON fact.K12JobPositionStatusId = K12JobPositionStatus.DimK12JobPositionStatusId
JOIN RDS.DimK12Jobs K12Job
	ON fact.K12JobId = K12Job.DimK12JobId
JOIN RDS.DimLeaJobClassifications LeaJobClassification
	ON fact.LeaJobClassificationId = LeaJobClassification.DimLeaJobClassificationId
JOIN RDS.DimSeaJobClassifications SeaJobClassification
	ON fact.SeaJobClassificationId = SeaJobClassification.DimSeaJobClassificationId
JOIN RDS.DimDates EmploymentStartDate
	ON fact.EmploymentStartDateId = EmploymentStartDate.DimDateId
JOIN RDS.DimDates EmploymentEndDate
	ON fact.EmploymentEndDateId = EmploymentEndDate.DimDateId
JOIN RDS.DimDates HireDate
	ON fact.HireDateId = HireDate.DimDateId
JOIN RDS.DimK12Demographics K12Demographic
	ON fact.K12DemographicId = K12Demographic.DimK12DemographicId
JOIN RDS.DimDataCollections DataCollection
	ON fact.DataCollectionId = DataCollection.DimDataCollectionId
JOIN RDS.DimRecordStatuses RecordStatus
	ON fact.RecordStatusId = RecordStatus.DimRecordStatusId
