-- View: RDS.vwFactK12AccessibleEducationMaterialAssignmentsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwFactK12AccessibleEducationMaterialAssignmentsParquet] AS
CREATE   VIEW RDS.vwFactK12AccessibleEducationMaterialAssignmentsParquet AS SELECT fact.FactK12AccessibleEducationMaterialAssignmentId
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
	, K1