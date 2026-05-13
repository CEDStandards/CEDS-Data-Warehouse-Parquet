CREATE OR ALTER VIEW [RDS].[vwFactK12AccessibleEducationMaterialAssignmentsParquet] AS
	SELECT fact.FactK12AccessibleEducationMaterialAssignmentId
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
	, AccessibleEducationMaterialProvider.AccessibleEducationMaterialProviderOrganizationIdentifierSea AS AccessibleEducationMaterialProvider_AccessibleEducationMaterialProviderOrganizationIdentifierSea
	, AccessibleEducationMaterialProvider.AccessibleEducationMaterialProviderName AS AccessibleEducationMaterialProvider_AccessibleEducationMaterialProviderName
	, AccessibleEducationMaterialProvider.StateAbbreviationCode AS AccessibleEducationMaterialProvider_StateAbbreviationCode
	, AccessibleEducationMaterialProvider.StateAbbreviationDescription AS AccessibleEducationMaterialProvider_StateAbbreviationDescription
	, AccessibleEducationMaterialProvider.StateAnsiCode AS AccessibleEducationMaterialProvider_StateAnsiCode
	, AccessibleEducationMaterialProvider.MailingAddressStreetNumberAndName AS AccessibleEducationMaterialProvider_MailingAddressStreetNumberAndName
	, AccessibleEducationMaterialProvider.MailingAddressApartmentRoomOrSuiteNumber AS AccessibleEducationMaterialProvider_MailingAddressApartmentRoomOrSuiteNumber
	, AccessibleEducationMaterialProvider.MailingAddressCity AS AccessibleEducationMaterialProvider_MailingAddressCity
	, AccessibleEducationMaterialProvider.MailingAddressPostalCode AS AccessibleEducationMaterialProvider_MailingAddressPostalCode
	, AccessibleEducationMaterialProvider.MailingAddressStateAbbreviation AS AccessibleEducationMaterialProvider_MailingAddressStateAbbreviation
	, AccessibleEducationMaterialProvider.MailingAddressCountyAnsiCodeCode AS AccessibleEducationMaterialProvider_MailingAddressCountyAnsiCodeCode
	, AccessibleEducationMaterialProvider.PhysicalAddressStreetNumberAndName AS AccessibleEducationMaterialProvider_PhysicalAddressStreetNumberAndName
	, AccessibleEducationMaterialProvider.PhysicalAddressApartmentRoomOrSuiteNumber AS AccessibleEducationMaterialProvider_PhysicalAddressApartmentRoomOrSuiteNumber
	, AccessibleEducationMaterialProvider.PhysicalAddressCity AS AccessibleEducationMaterialProvider_PhysicalAddressCity
	, AccessibleEducationMaterialProvider.PhysicalAddressPostalCode AS AccessibleEducationMaterialProvider_PhysicalAddressPostalCode
	, AccessibleEducationMaterialProvider.PhysicalAddressStateAbbreviation AS AccessibleEducationMaterialProvider_PhysicalAddressStateAbbreviation
	, AccessibleEducationMaterialProvider.PhysicalAddressCountyAnsiCodeCode AS AccessibleEducationMaterialProvider_PhysicalAddressCountyAnsiCodeCode
	, AccessibleEducationMaterialProvider.TelephoneNumber AS AccessibleEducationMaterialProvider_TelephoneNumber
	, AccessibleEducationMaterialProvider.WebSiteAddress AS AccessibleEducationMaterialProvider_WebSiteAddress
	, AccessibleEducationMaterialProvider.OutOfStateIndicator AS AccessibleEducationMaterialProvider_OutOfStateIndicator
	, AccessibleEducationMaterialProvider.RecordStartDateTime AS AccessibleEducationMaterialProvider_RecordStartDateTime
	, AccessibleEducationMaterialProvider.RecordEndDateTime AS AccessibleEducationMaterialProvider_RecordEndDateTime
	, AccessibleEducationMaterialStatus.AccessibleFormatIssuedIndicatorCode AS AccessibleEducationMaterialStatus_AccessibleFormatIssuedIndicatorCode
	, AccessibleEducationMaterialStatus.AccessibleFormatIssuedIndicatorDescription AS AccessibleEducationMaterialStatus_AccessibleFormatIssuedIndicatorDescription
	, AccessibleEducationMaterialStatus.AccessibleFormatRequiredIndicatorCode AS AccessibleEducationMaterialStatus_AccessibleFormatRequiredIndicatorCode
	, AccessibleEducationMaterialStatus.AccessibleFormatRequiredIndicatorDescription AS AccessibleEducationMaterialStatus_AccessibleFormatRequiredIndicatorDescription
	, AccessibleEducationMaterialStatus.AccessibleFormatTypeCode AS AccessibleEducationMaterialStatus_AccessibleFormatTypeCode
	, AccessibleEducationMaterialStatus.AccessibleFormatTypeDescription AS AccessibleEducationMaterialStatus_AccessibleFormatTypeDescription
	, DataCollection.SourceSystemDataCollectionIdentifier AS DataCollection_SourceSystemDataCollectionIdentifier
	, DataCollection.SourceSystemName AS DataCollection_SourceSystemName
	, DataCollection.DataCollectionName AS DataCollection_DataCollectionName
	, DataCollection.DataCollectionDescription AS DataCollection_DataCollectionDescription
	, DataCollection.DataCollectionOpenDate AS DataCollection_DataCollectionOpenDate
	, DataCollection.DataCollectionCloseDate AS DataCollection_DataCollectionCloseDate
	, DataCollection.DataCollectionAcademicSchoolYear AS DataCollection_DataCollectionAcademicSchoolYear
	, DataCollection.DataCollectionSchoolYear AS DataCollection_DataCollectionSchoolYear
	, Age.AgeCode AS Age_AgeCode
	, Age.AgeDescription AS Age_AgeDescription
	, Age.AgeEdFactsCode AS Age_AgeEdFactsCode
	, Age.AgeValue AS Age_AgeValue
	, DisabilityStatus.DisabilityStatusCode AS DisabilityStatus_DisabilityStatusCode
	, DisabilityStatus.DisabilityStatusDescription AS DisabilityStatus_DisabilityStatusDescription
	, DisabilityStatus.Section504StatusCode AS DisabilityStatus_Section504StatusCode
	, DisabilityStatus.Section504StatusDescription AS DisabilityStatus_Section504StatusDescription
	, DisabilityStatus.Section504StatusEdFactsCode AS DisabilityStatus_Section504StatusEdFactsCode
	, DisabilityStatus.DisabilityConditionTypeCode AS DisabilityStatus_DisabilityConditionTypeCode
	, DisabilityStatus.DisabilityConditionTypeDescription AS DisabilityStatus_DisabilityConditionTypeDescription
	, DisabilityStatus.DisabilityDeterminationSourceTypeCode AS DisabilityStatus_DisabilityDeterminationSourceTypeCode
	, DisabilityStatus.DisabilityDeterminationSourceTypeDescription AS DisabilityStatus_DisabilityDeterminationSourceTypeDescription
	, EconomicallyDisadvantagedStatus.EconomicDisadvantageStatusCode AS EconomicallyDisadvantagedStatus_EconomicDisadvantageStatusCode
	, EconomicallyDisadvantagedStatus.EconomicDisadvantageStatusDescription AS EconomicallyDisadvantagedStatus_EconomicDisadvantageStatusDescription
	, EconomicallyDisadvantagedStatus.EconomicDisadvantageStatusEdFactsCode AS EconomicallyDisadvantagedStatus_EconomicDisadvantageStatusEdFactsCode
	, EconomicallyDisadvantagedStatus.EligibilityStatusForSchoolFoodServiceProgramsCode AS EconomicallyDisadvantagedStatus_EligibilityStatusForSchoolFoodServiceProgramsCode
	, EconomicallyDisadvantagedStatus.EligibilityStatusForSchoolFoodServiceProgramsDescription AS EconomicallyDisadvantagedStatus_EligibilityStatusForSchoolFoodServiceProgramsDescription
	, EconomicallyDisadvantagedStatus.EligibilityStatusForSchoolFoodServiceProgramsEdFactsCode AS EconomicallyDisadvantagedStatus_EligibilityStatusForSchoolFoodServiceProgramsEdFactsCode
	, EconomicallyDisadvantagedStatus.NationalSchoolLunchProgramDirectCertificationIndicatorCode AS EconomicallyDisadvantagedStatus_NationalSchoolLunchProgramDirectCertificationIndicatorCode
	, EconomicallyDisadvantagedStatus.NationalSchoolLunchProgramDirectCertificationIndicatorDescription AS EconomicallyDisadvantagedStatus_NationalSchoolLunchProgramDirectCertificationIndicatorDescription
	, EnglishLearnerStatus.EnglishLearnerStatusCode AS EnglishLearnerStatus_EnglishLearnerStatusCode
	, EnglishLearnerStatus.EnglishLearnerStatusDescription AS EnglishLearnerStatus_EnglishLearnerStatusDescription
	, EnglishLearnerStatus.EnglishLearnerStatusEdFactsCode AS EnglishLearnerStatus_EnglishLearnerStatusEdFactsCode
	, EnglishLearnerStatus.PerkinsEnglishLearnerStatusCode AS EnglishLearnerStatus_PerkinsEnglishLearnerStatusCode
	, EnglishLearnerStatus.PerkinsEnglishLearnerStatusDescription AS EnglishLearnerStatus_PerkinsEnglishLearnerStatusDescription
	, EnglishLearnerStatus.PerkinsEnglishLearnerStatusEdFactsCode AS EnglishLearnerStatus_PerkinsEnglishLearnerStatusEdFactsCode
	, EntryGradeLevel.GradeLevelCode AS EntryGradeLevel_GradeLevelCode
	, EntryGradeLevel.GradeLevelDescription AS EntryGradeLevel_GradeLevelDescription
	, EntryGradeLevel.GradeLevelEdFactsCode AS EntryGradeLevel_GradeLevelEdFactsCode
	, FosterCareStatus.ProgramParticipationFosterCareCode AS FosterCareStatus_ProgramParticipationFosterCareCode
	, FosterCareStatus.ProgramParticipationFosterCareDescription AS FosterCareStatus_ProgramParticipationFosterCareDescription
	, FosterCareStatus.ProgramParticipationFosterCareEdFactsCode AS FosterCareStatus_ProgramParticipationFosterCareEdFactsCode
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
	, ImmigrantStatus.TitleIIIImmigrantStatusCode AS ImmigrantStatus_TitleIIIImmigrantStatusCode
	, ImmigrantStatus.TitleIIIImmigrantStatusDescription AS ImmigrantStatus_TitleIIIImmigrantStatusDescription
	, ImmigrantStatus.TitleIIIImmigrantStatusEdFactsCode AS ImmigrantStatus_TitleIIIImmigrantStatusEdFactsCode
	, ImmigrantStatus.TitleIIIImmigrantParticipationStatusCode AS ImmigrantStatus_TitleIIIImmigrantParticipationStatusCode
	, ImmigrantStatus.TitleIIIImmigrantParticipationStatusDescription AS ImmigrantStatus_TitleIIIImmigrantParticipationStatusDescription
	, ImmigrantStatus.TitleIIIImmigrantParticipationStatusEdFactsCode AS ImmigrantStatus_TitleIIIImmigrantParticipationStatusEdFactsCode
	, K12Course.CourseIdentifier AS K12Course_CourseIdentifier
	, K12Course.CourseCodeSystemCode AS K12Course_CourseCodeSystemCode
	, K12Course.CourseCodeSystemDescription AS K12Course_CourseCodeSystemDescription
	, K12Course.CourseTitle AS K12Course_CourseTitle
	, K12Course.CourseDescription AS K12Course_CourseDescription
	, K12Course.CourseDepartmentName AS K12Course_CourseDepartmentName
	, K12Course.CourseCreditUnitsCode AS K12Course_CourseCreditUnitsCode
	, K12Course.CourseCreditUnitsDescription AS K12Course_CourseCreditUnitsDescription
	, K12Course.CreditValue AS K12Course_CreditValue
	, K12Course.AdvancedPlacementCourseCode AS K12Course_AdvancedPlacementCourseCode
	, K12Course.CareerClusterCode AS K12Course_CareerClusterCode
	, K12Course.CareerClusterDescription AS K12Course_CareerClusterDescription
	, K12Course.CourseCertificationDescription AS K12Course_CourseCertificationDescription
	, K12Course.TuitionFunded AS K12Course_TuitionFunded
	, K12Course.CourseFundingProgram AS K12Course_CourseFundingProgram
	, K12Course.CourseFundingProgramAllowed AS K12Course_CourseFundingProgramAllowed
	, K12Course.CoreAcademicCourseCode AS K12Course_CoreAcademicCourseCode
	, K12Course.CoreAcademicCourseDescription AS K12Course_CoreAcademicCourseDescription
	, K12Course.CourseBeginDate AS K12Course_CourseBeginDate
	, K12Course.CourseEndDate AS K12Course_CourseEndDate
	, K12Course.RecordStartDateTime AS K12Course_RecordStartDateTime
	, K12Course.RecordEndDateTime AS K12Course_RecordEndDateTime
	, K12Demographic.SexCode AS K12Demographic_SexCode
	, K12Demographic.SexDescription AS K12Demographic_SexDescription
	, K12Demographic.SexEdFactsCode AS K12Demographic_SexEdFactsCode
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
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
	, RuralStatus.ERSRuralUrbanContinuumCodeCode AS RuralStatus_ERSRuralUrbanContinuumCodeCode
	, RuralStatus.ERSRuralUrbanContinuumCodeDescription AS RuralStatus_ERSRuralUrbanContinuumCodeDescription
	, RuralStatus.RuralResidencyStatusCode AS RuralStatus_RuralResidencyStatusCode
	, RuralStatus.RuralResidencyStatusDescription AS RuralStatus_RuralResidencyStatusDescription
	, PrimaryIdeaDisabilityType.IdeaDisabilityTypeCode AS PrimaryIdeaDisabilityType_IdeaDisabilityTypeCode
	, PrimaryIdeaDisabilityType.IdeaDisabilityTypeDescription AS PrimaryIdeaDisabilityType_IdeaDisabilityTypeDescription
	, PrimaryIdeaDisabilityType.IdeaDisabilityTypeEdFactsCode AS PrimaryIdeaDisabilityType_IdeaDisabilityTypeEdFactsCode
	, SecondaryIdeaDisabilityType.IdeaDisabilityTypeCode AS SecondaryIdeaDisabilityType_IdeaDisabilityTypeCode
	, SecondaryIdeaDisabilityType.IdeaDisabilityTypeDescription AS SecondaryIdeaDisabilityType_IdeaDisabilityTypeDescription
	, SecondaryIdeaDisabilityType.IdeaDisabilityTypeEdFactsCode AS SecondaryIdeaDisabilityType_IdeaDisabilityTypeEdFactsCode
	, ScedCode.ScedCourseTitle AS ScedCode_ScedCourseTitle
	, ScedCode.ScedCourseCodeDescription AS ScedCode_ScedCourseCodeDescription
	, ScedCode.ScedCourseLevelCode AS ScedCode_ScedCourseLevelCode
	, ScedCode.ScedCourseLevelDescription AS ScedCode_ScedCourseLevelDescription
	, ScedCode.ScedCourseSubjectAreaCode AS ScedCode_ScedCourseSubjectAreaCode
	, ScedCode.ScedCourseSubjectAreaDescription AS ScedCode_ScedCourseSubjectAreaDescription
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
	, StatusStartDateMilitary.DateValue AS StatusStartDateMilitary_DateValue
	, StatusStartDateMilitary.Day AS StatusStartDateMilitary_Day
	, StatusStartDateMilitary.DayOfWeek AS StatusStartDateMilitary_DayOfWeek
	, StatusStartDateMilitary.DayOfYear AS StatusStartDateMilitary_DayOfYear
	, StatusStartDateMilitary.Month AS StatusStartDateMilitary_Month
	, StatusStartDateMilitary.MonthName AS StatusStartDateMilitary_MonthName
	, StatusStartDateMilitary.SubmissionYear AS StatusStartDateMilitary_SubmissionYear
	, StatusStartDateMilitary.Year AS StatusStartDateMilitary_Year
	, StatusEndDateMilitary.DateValue AS StatusEndDateMilitary_DateValue
	, StatusEndDateMilitary.Day AS StatusEndDateMilitary_Day
	, StatusEndDateMilitary.DayOfWeek AS StatusEndDateMilitary_DayOfWeek
	, StatusEndDateMilitary.DayOfYear AS StatusEndDateMilitary_DayOfYear
	, StatusEndDateMilitary.Month AS StatusEndDateMilitary_Month
	, StatusEndDateMilitary.MonthName AS StatusEndDateMilitary_MonthName
	, StatusEndDateMilitary.SubmissionYear AS StatusEndDateMilitary_SubmissionYear
	, StatusEndDateMilitary.Year AS StatusEndDateMilitary_Year
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
	, LearningResourceIssuedDate.DateValue AS LearningResourceIssuedDate_DateValue
	, LearningResourceIssuedDate.Day AS LearningResourceIssuedDate_Day
	, LearningResourceIssuedDate.DayOfWeek AS LearningResourceIssuedDate_DayOfWeek
	, LearningResourceIssuedDate.DayOfYear AS LearningResourceIssuedDate_DayOfYear
	, LearningResourceIssuedDate.Month AS LearningResourceIssuedDate_Month
	, LearningResourceIssuedDate.MonthName AS LearningResourceIssuedDate_MonthName
	, LearningResourceIssuedDate.SubmissionYear AS LearningResourceIssuedDate_SubmissionYear
	, LearningResourceIssuedDate.Year AS LearningResourceIssuedDate_Year
	, LearningResourceOrderedDate.DateValue AS LearningResourceOrderedDate_DateValue
	, LearningResourceOrderedDate.Day AS LearningResourceOrderedDate_Day
	, LearningResourceOrderedDate.DayOfWeek AS LearningResourceOrderedDate_DayOfWeek
	, LearningResourceOrderedDate.DayOfYear AS LearningResourceOrderedDate_DayOfYear
	, LearningResourceOrderedDate.Month AS LearningResourceOrderedDate_Month
	, LearningResourceOrderedDate.MonthName AS LearningResourceOrderedDate_MonthName
	, LearningResourceOrderedDate.SubmissionYear AS LearningResourceOrderedDate_SubmissionYear
	, LearningResourceOrderedDate.Year AS LearningResourceOrderedDate_Year
	, LearningResourceReceivedDate.DateValue AS LearningResourceReceivedDate_DateValue
	, LearningResourceReceivedDate.Day AS LearningResourceReceivedDate_Day
	, LearningResourceReceivedDate.DayOfWeek AS LearningResourceReceivedDate_DayOfWeek
	, LearningResourceReceivedDate.DayOfYear AS LearningResourceReceivedDate_DayOfYear
	, LearningResourceReceivedDate.Month AS LearningResourceReceivedDate_Month
	, LearningResourceReceivedDate.MonthName AS LearningResourceReceivedDate_MonthName
	, LearningResourceReceivedDate.SubmissionYear AS LearningResourceReceivedDate_SubmissionYear
	, LearningResourceReceivedDate.Year AS LearningResourceReceivedDate_Year
	, CourseSectionStartDate.DateValue AS CourseSectionStartDate_DateValue
	, CourseSectionStartDate.Day AS CourseSectionStartDate_Day
	, CourseSectionStartDate.DayOfWeek AS CourseSectionStartDate_DayOfWeek
	, CourseSectionStartDate.DayOfYear AS CourseSectionStartDate_DayOfYear
	, CourseSectionStartDate.Month AS CourseSectionStartDate_Month
	, CourseSectionStartDate.MonthName AS CourseSectionStartDate_MonthName
	, CourseSectionStartDate.SubmissionYear AS CourseSectionStartDate_SubmissionYear
	, CourseSectionStartDate.Year AS CourseSectionStartDate_Year
	, CourseSectionEndDate.DateValue AS CourseSectionEndDate_DateValue
	, CourseSectionEndDate.Day AS CourseSectionEndDate_Day
	, CourseSectionEndDate.DayOfWeek AS CourseSectionEndDate_DayOfWeek
	, CourseSectionEndDate.DayOfYear AS CourseSectionEndDate_DayOfYear
	, CourseSectionEndDate.Month AS CourseSectionEndDate_Month
	, CourseSectionEndDate.MonthName AS CourseSectionEndDate_MonthName
	, CourseSectionEndDate.SubmissionYear AS CourseSectionEndDate_SubmissionYear
	, CourseSectionEndDate.Year AS CourseSectionEndDate_Year
	, fact.AssignmentCount
FROM RDS.FactK12AccessibleEducationMaterialAssignments fact
JOIN RDS.DimSchoolYears SchoolYear
	ON fact.SchoolYearId = SchoolYear.DimSchoolYearId
JOIN RDS.DimDates CountDate
	ON fact.CountDateId = CountDate.DimDateId
JOIN RDS.DimPeople K12Student
	ON fact.K12StudentId = K12Student.DimPersonId
JOIN RDS.DimPeople_Current K12Student_Current
	ON fact.K12Student_CurrentId = K12Student_Current.DimPersonId
JOIN RDS.DimSeas Sea
	ON fact.SeaId = Sea.DimSeaId
JOIN RDS.DimIeus Ieu
	ON fact.IeuId = Ieu.DimIeuId
JOIN RDS.DimLeas Lea
	ON fact.LeaId = Lea.DimLeaId
JOIN RDS.DimK12Schools K12School
	ON fact.K12SchoolId = K12School.DimK12SchoolId
JOIN RDS.DimAccessibleEducationMaterialProviders AccessibleEducationMaterialProvider
	ON fact.AccessibleEducationMaterialProviderId = AccessibleEducationMaterialProvider.DimAccessibleEducationMaterialProviderId
JOIN RDS.DimAccessibleEducationMaterialStatuses AccessibleEducationMaterialStatus
	ON fact.AccessibleEducationMaterialStatusId = AccessibleEducationMaterialStatus.DimAccessibleEducationMaterialStatusId
JOIN RDS.DimDataCollections DataCollection
	ON fact.DataCollectionId = DataCollection.DimDataCollectionId
JOIN RDS.DimAges Age
	ON fact.AgeId = Age.DimAgeId
JOIN RDS.DimDisabilityStatuses DisabilityStatus
	ON fact.DisabilityStatusId = DisabilityStatus.DimDisabilityStatusId
JOIN RDS.DimEconomicallyDisadvantagedStatuses EconomicallyDisadvantagedStatus
	ON fact.EconomicallyDisadvantagedStatusId = EconomicallyDisadvantagedStatus.DimEconomicallyDisadvantagedStatusId
JOIN RDS.DimEnglishLearnerStatuses EnglishLearnerStatus
	ON fact.EnglishLearnerStatusId = EnglishLearnerStatus.DimEnglishLearnerStatusId
JOIN RDS.DimGradeLevels EntryGradeLevel
	ON fact.EntryGradeLevelId = EntryGradeLevel.DimGradeLevelId
JOIN RDS.DimFosterCareStatuses FosterCareStatus
	ON fact.FosterCareStatusId = FosterCareStatus.DimFosterCareStatusId
JOIN RDS.DimHomelessnessStatuses HomelessnessStatus
	ON fact.HomelessnessStatusId = HomelessnessStatus.DimHomelessnessStatusId
JOIN RDS.DimIdeaStatuses IdeaStatus
	ON fact.IdeaStatusId = IdeaStatus.DimIdeaStatusId
JOIN RDS.DimImmigrantStatuses ImmigrantStatus
	ON fact.ImmigrantStatusId = ImmigrantStatus.DimImmigrantStatusId
JOIN RDS.DimK12Courses K12Course
	ON fact.K12CourseId = K12Course.DimK12CourseId
JOIN RDS.DimK12Demographics K12Demographic
	ON fact.K12DemographicId = K12Demographic.DimK12DemographicId
JOIN RDS.DimK12EnrollmentStatuses K12EnrollmentStatus
	ON fact.K12EnrollmentStatusId = K12EnrollmentStatus.DimK12EnrollmentStatusId
JOIN RDS.DimMigrantStatuses MigrantStatus
	ON fact.MigrantStatusId = MigrantStatus.DimMigrantStatusId
JOIN RDS.DimMilitaryStatuses MilitaryStatus
	ON fact.MilitaryStatusId = MilitaryStatus.DimMilitaryStatusId
JOIN RDS.DimRaces Race
	ON fact.RaceId = Race.DimRaceId
JOIN RDS.DimRuralStatuses RuralStatus
	ON fact.RuralStatusId = RuralStatus.DimRuralStatusId
JOIN RDS.DimIdeaDisabilityTypes PrimaryIdeaDisabilityType
	ON fact.PrimaryIdeaDisabilityTypeId = PrimaryIdeaDisabilityType.DimIdeaDisabilityTypeId
JOIN RDS.DimIdeaDisabilityTypes SecondaryIdeaDisabilityType
	ON fact.SecondaryIdeaDisabilityTypeId = SecondaryIdeaDisabilityType.DimIdeaDisabilityTypeId
JOIN RDS.DimScedCodes ScedCode
	ON fact.ScedCodeId = ScedCode.DimScedCodeId
JOIN RDS.DimDates EnrollmentEntryDate
	ON fact.EnrollmentEntryDateId = EnrollmentEntryDate.DimDateId
JOIN RDS.DimDates EnrollmentExitDate
	ON fact.EnrollmentExitDateId = EnrollmentExitDate.DimDateId
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
JOIN RDS.DimDates StatusStartDateMilitary
	ON fact.StatusStartDateMilitaryId = StatusStartDateMilitary.DimDateId
JOIN RDS.DimDates StatusEndDateMilitary
	ON fact.StatusEndDateMilitaryId = StatusEndDateMilitary.DimDateId
JOIN RDS.DimDates StatusStartDatePerkinsEnglishLearner
	ON fact.StatusStartDatePerkinsEnglishLearnerId = StatusStartDatePerkinsEnglishLearner.DimDateId
JOIN RDS.DimDates StatusEndDatePerkinsEnglishLearner
	ON fact.StatusEndDatePerkinsEnglishLearnerId = StatusEndDatePerkinsEnglishLearner.DimDateId
JOIN RDS.DimDates LearningResourceIssuedDate
	ON fact.LearningResourceIssuedDateId = LearningResourceIssuedDate.DimDateId
JOIN RDS.DimDates LearningResourceOrderedDate
	ON fact.LearningResourceOrderedDateId = LearningResourceOrderedDate.DimDateId
JOIN RDS.DimDates LearningResourceReceivedDate
	ON fact.LearningResourceReceivedDateId = LearningResourceReceivedDate.DimDateId
JOIN RDS.DimDates CourseSectionStartDate
	ON fact.CourseSectionStartDateId = CourseSectionStartDate.DimDateId
JOIN RDS.DimDates CourseSectionEndDate
	ON fact.CourseSectionEndDateId = CourseSectionEndDate.DimDateId
