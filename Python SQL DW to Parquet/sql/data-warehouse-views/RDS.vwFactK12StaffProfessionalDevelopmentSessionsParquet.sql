-- View: RDS.vwFactK12StaffProfessionalDevelopmentSessionsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwFactK12StaffProfessionalDevelopmentSessionsParquet] AS
CREATE   VIEW RDS.vwFactK12StaffProfessionalDevelopmentSessionsParquet AS SELECT fact.FactK12StaffProfessionalDevelopmentSessionId
	, SchoolYear.SchoolYear AS SchoolYear_SchoolYear
	, SchoolYear.SessionBeginDate AS SchoolYear_SessionBeginDate
	, SchoolYear.SessionEndDate AS SchoolYear_SessionEndDate
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
	, K12Staff_Current.K12