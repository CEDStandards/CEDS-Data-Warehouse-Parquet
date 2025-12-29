-- View: RDS.vwFactAeStudentEnrollmentsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwFactAeStudentEnrollmentsParquet] AS
CREATE   VIEW RDS.vwFactAeStudentEnrollmentsParquet AS SELECT fact.FactAeStudentEnrollmentId
	, ProgramYear.ProgramYear AS ProgramYear_ProgramYear
	, ProgramYear.SessionBeginDate AS ProgramYear_SessionBeginDate
	, ProgramYear.SessionEndDate AS ProgramYear_SessionEndDate
	, DataCollection.SourceSystemDataCollectionIdentifier AS DataCollection_SourceSystemDataCollectionIdentifier
	, DataCollection.SourceSystemName AS DataCollection_SourceSystemName
	, DataCollection.DataCollectionName AS DataCollection_DataCollectionName
	, DataCollection.DataCollectionDescription AS DataCollection_DataCollectionDescription
	, DataCollection.DataCollectionOpenDate AS DataCollection_DataCollectionOpenDate
	, DataCollection.DataCollectionCloseDate AS DataCollection_DataCollectionCloseDate
	, DataCollection.DataCollectionAcademicSchoolYear AS DataCollection_DataCollectionAcademicSchoolYear
	, DataCollection.DataCollectionSchoolYear AS DataCollection_DataCollectionSchoolYear
	, AeStudent.FirstName AS AeStudent_FirstName
	, AeStudent.MiddleName AS AeStudent_MiddleName
	, AeStudent.LastOrSurname AS AeStudent_LastOrSurname
	, AeStudent.Birthdate AS AeStudent_Birthdate
	, AeStudent.ELChildChildIdentifierState AS AeStudent_ELChildChildIdentifierState
	, AeStudent.K12StudentStudentIdentifierState AS AeStudent_K12StudentStudentIdentifierState
	, AeStudent.K12StudentStudentIdentifierDistrict AS AeStudent_K12StudentStudentIdentifierDistrict
	, AeStudent.K12StudentStudentIdentifierNationalMigrant AS AeStudent_K12StudentStudentIdentifierNationalMigrant
	, AeStudent.PsStudentStudentIdentifierState AS AeStudent_PsStudentStudentIdentifierState
	, AeStudent.AeStudentStudentIdentifierState AS AeStudent_AeStudentStudentIdentifierState
	, AeStudent.WorkforceProgramParticipantPersonIdentifierState AS AeStudent_WorkforceProgramParticipantPersonIdentifierState
	, AeStudent.ELStaffStaffMemberIdentifierState AS AeStudent_ELStaffStaffMemberIdentifierState
	, AeStudent.K12StaffStaffMemberIdentifierState AS AeStudent_K12StaffStaffMemberIdentifierState
	, AeStudent.K12StaffStaffMemberIdentifierDistrict AS AeStudent_K12StaffStaffMemberIdentifierDistrict
	, AeStudent.PsStaffStaffMemberIdentifierState AS AeStudent_PsStaffStaffMemberIdentifierState
	, AeStudent.PersonIdentifierDriversLicense AS AeStudent_PersonIdentifierDriversLicense
	, AeStudent.PersonIdentifierSSN AS AeStudent_PersonIdentifierSSN
	, AeStudent.PersonIdentifierState AS AeStudent_PersonIdentifierState
	, AeStudent.StudentIdentifierState AS AeStudent_StudentIdentifierState
	, AeStudent.IsActiveELChild AS AeStudent_IsActiveELChild
	, AeStudent.IsActiveK12Student AS AeStudent_IsActiveK12Student
	, AeStudent.IsActivePsStudent AS AeStudent_IsActivePsStudent
	, AeStudent.IsActiveAeStudent AS AeStudent_IsActiveAeStudent
	, AeStudent.IsActiveWorkforceProgramParticipant AS AeStudent_IsActiveWorkforceProgramParticipant
	, AeStudent.IsActiveELStaff AS AeStudent_IsActiveELStaff
	, AeStudent.IsActiveK12Staff AS AeStudent_IsActiveK12Staff
	, AeStudent.IsActivePsStaff AS AeStudent_IsActivePsStaff
	, AeStudent.RecordStartDateTime AS AeStudent_RecordStartDateTime
	, AeStudent.RecordEndDateTime AS AeStudent_RecordEndDateTime
	, AeStudent.ElectronicMailAddressHome AS AeStudent_ElectronicMailAddressHome
	, AeStudent.ElectronicMailAddressOrganizational AS AeStudent_ElectronicMailAddressOrganizational
	, AeStudent.ElectronicMailAddressWork AS AeStudent_ElectronicMailAddressWork
	, AeStudent.TelephoneNumberFax AS AeStudent_TelephoneNumberFax
	, AeStudent.TelephoneNumberHome AS AeStudent_TelephoneNumberHome
	, AeStudent.TelephoneNumberMobile AS AeStudent_TelephoneNumberMobile
	, AeStudent.TelephoneNumberWork AS AeStudent_TelephoneNumberWork
	, AeStudent.PersonalTitleOrPrefix AS AeStudent_PersonalTitleOrPrefix
	, AeStudent.PositionTitle AS AeStudent_PositionTitle
	, AeStudent.GenerationCodeOrSuffix AS AeStudent_GenerationCodeOrSuffix
	, AeStudent.HighestLevelOfEducationCompletedCode AS A