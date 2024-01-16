CREATE   VIEW RDS.vwFactPsStudentAcademicAwardsParquet AS SELECT fact.FactPsStudentAcademicAwardId
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
	, PsInstitution.WebsiteAddress AS PsInstitution_WebsiteAddress
	, PsInstitution.Latitude AS PsInstitution_Latitude
	, PsInstitution.Longitude AS PsInstitution_Longitude
	, PsInstitution.RecordStartDateTime AS PsInstitution_RecordStartDateTime
	, PsInstitution.RecordEndDateTime AS PsInstitution_RecordEndDateTime
	, PsInstitution.MailingAddressCountyAnsiCodeCode AS PsInstitution_MailingAddressCountyAnsiCodeCode
	, PsInstitution.PhysicalAddressCountyAnsiCodeCode AS PsInstitution_PhysicalAddressCountyAnsiCodeCode
	, PsStudent.FirstName AS PsStudent_FirstName
	, PsStudent.MiddleName AS PsStudent_MiddleName
	, PsStudent.LastOrSurname AS PsStudent_LastOrSurname
	, PsStudent.BirthDate AS PsStudent_BirthDate
	, PsStudent.ELChildChildIdentifierState AS PsStudent_ELChildChildIdentifierState
	, PsStudent.K12StudentStudentIdentifierState AS PsStudent_K12StudentStudentIdentifierState
	, PsStudent.K12StudentStudentIdentifierDistrict AS PsStudent_K12StudentStudentIdentifierDistrict
	, PsStudent.K12StudentStudentIdentifierNationalMigrant AS PsStudent_K12StudentStudentIdentifierNationalMigrant
	, PsStudent.PsStudentStudentIdentifierState AS PsStudent_PsStudentStudentIdentifierState
	, PsStudent.AeStudentStudentIdentifierState AS PsStudent_AeStudentStudentIdentifierState
	, PsStudent.WorkforceProgramParticipantPersonIdentifierState AS PsStudent_WorkforceProgramParticipantPersonIdentifierState
	, PsStudent.ELStaffStaffMemberIdentifierState AS PsStudent_ELStaffStaffMemberIdentifierState
	, PsStudent.K12StaffStaffMemberIdentifierState AS PsStudent_K12StaffStaffMemberIdentifierState
	, PsStudent.K12StaffStaffMemberIdentifierDistrict AS PsStudent_K12StaffStaffMemberIdentifierDistrict
	, PsStudent.PsStaffStaffMemberIdentifierState AS PsStudent_PsStaffStaffMemberIdentifierState
	, PsStudent.PersonIdentifierDriversLicense AS PsStudent_PersonIdentifierDriversLicense
	, PsStudent.IsActiveELChild AS PsStudent_IsActiveELChild
	, PsStudent.IsActiveK12Student AS PsStudent_IsActiveK12Student
	, PsStudent.IsActivePsStudent AS PsStudent_IsActivePsStudent
	, PsStudent.IsActiveAeStudent AS PsStudent_IsActiveAeStudent
	, PsStudent.IsActiveWorkforceProgramParticipant AS PsStudent_IsActiveWorkforceProgramParticipant
	, PsStudent.IsActiveELStaff AS PsStudent_IsActiveELStaff
	, PsStudent.IsActiveK12Staff AS PsStudent_IsActiveK12Staff
	, PsStudent.IsActivePsStaff AS PsStudent_IsActivePsStaff
	, PsStudent.RecordStartDateTime AS PsStudent_RecordStartDateTime
	, PsStudent.RecordEndDateTime AS PsStudent_RecordEndDateTime
	, PsStudent.ElectronicMailAddressHome AS PsStudent_ElectronicMailAddressHome
	, PsStudent.ElectronicMailAddressOrganizational AS PsStudent_ElectronicMailAddressOrganizational
	, PsStudent.ElectronicMailAddressWork AS PsStudent_ElectronicMailAddressWork
	, PsStudent.TelephoneNumberFax AS PsStudent_TelephoneNumberFax
	, PsStudent.TelephoneNumberHome AS PsStudent_TelephoneNumberHome
	, PsStudent.TelephoneNumberMobile AS PsStudent_TelephoneNumberMobile
	, PsStudent.TelephoneNumberWork AS PsStudent_TelephoneNumberWork
	, PsStudent.PersonalTitleOrPrefix AS PsStudent_PersonalTitleOrPrefix
	, PsStudent.PositionTitle AS PsStudent_PositionTitle
	, PsAcademicAwardTitle.AcademicAwardTitle AS PsAcademicAwardTitle_AcademicAwardTitle
	, AcademicAwardDate.DateValue AS AcademicAwardDate_DateValue
	, AcademicAwardDate.Day AS AcademicAwardDate_Day
	, AcademicAwardDate.DayOfWeek AS AcademicAwardDate_DayOfWeek
	, AcademicAwardDate.DayOfYear AS AcademicAwardDate_DayOfYear
	, AcademicAwardDate.Month AS AcademicAwardDate_Month
	, AcademicAwardDate.MonthName AS AcademicAwardDate_MonthName
	, AcademicAwardDate.SubmissionYear AS AcademicAwardDate_SubmissionYear
	, AcademicAwardDate.Year AS AcademicAwardDate_Year
	, PsAcademicAwardStatus.PescAwardLevelTypeCode AS PsAcademicAwardStatus_PescAwardLevelTypeCode
	, PsAcademicAwardStatus.PescAwardLevelTypeDescription AS PsAcademicAwardStatus_PescAwardLevelTypeDescription
	, PsAcademicAwardStatus.ProfessionalOrTechnicalCredentialConferredCode AS PsAcademicAwardStatus_ProfessionalOrTechnicalCredentialConferredCode
	, PsAcademicAwardStatus.ProfessionalOrTechnicalCredentialConferredDescription AS PsAcademicAwardStatus_ProfessionalOrTechnicalCredentialConferredDescription
	, fact.StudentCount
	, SchoolYear.SchoolYear AS SchoolYear_SchoolYear
	, SchoolYear.SessionBeginDate AS SchoolYear_SessionBeginDate
	, SchoolYear.SessionEndDate AS SchoolYear_SessionEndDate
	, PsDemographic.SexCode AS PsDemographic_SexCode
	, PsDemographic.SexDescription AS PsDemographic_SexDescription
FROM RDS.FactPsStudentAcademicAwards fact
JOIN RDS.DimPsInstitutions PsInstitution
	ON Fact.PsInstitutionId = PsInstitution.DimPsInstitutionID
JOIN RDS.DimPeople PsStudent
	ON Fact.PsStudentId = PsStudent.DimPersonId
JOIN RDS.DimPsAcademicAwardTitles PsAcademicAwardTitle
	ON Fact.PsAcademicAwardTitleId = PsAcademicAwardTitle.DimPsAcademicAwardTitleId
JOIN RDS.DimDates AcademicAwardDate
	ON Fact.AcademicAwardDateId = AcademicAwardDate.DimDateId
JOIN RDS.DimPsAcademicAwardStatuses PsAcademicAwardStatus
	ON Fact.PsAcademicAwardStatusId = PsAcademicAwardStatus.DimPsAcademicAwardStatusId
JOIN RDS.DimSchoolYears SchoolYear
	ON Fact.SchoolYearId = SchoolYear.DimSchoolYearId
JOIN RDS.DimPsDemographics PsDemographic
	ON Fact.PsDemographicId = PsDemographic.DimPsDemographicId
