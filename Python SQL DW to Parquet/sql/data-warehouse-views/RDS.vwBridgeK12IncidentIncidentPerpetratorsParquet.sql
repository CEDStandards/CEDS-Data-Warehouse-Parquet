-- View: RDS.vwBridgeK12IncidentIncidentPerpetratorsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12IncidentIncidentPerpetratorsParquet] AS
CREATE   VIEW RDS.vwBridgeK12IncidentIncidentPerpetratorsParquet AS SELECT fact.BridgeK12IncidentIncidentPerpetratorId
	, FactK12Incident.RecordStartDateTime AS FactK12Incident_RecordStartDateTime
	, FactK12Incident.RecordEndDateTime AS FactK12Incident_RecordEndDateTime
	, FactK12Incident.IncidentCost AS FactK12Incident_IncidentCost
	, Person.FirstName AS Person_FirstName
	, Person.MiddleName AS Person_MiddleName
	, Person.LastOrSurname AS Person_LastOrSurname
	, Person.Birthdate AS Person_Birthdate
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
	, Person.PersonIdentifierSSN AS Person_PersonIdentifierSSN
	, Person.PersonIdentifierState AS Person_PersonIdentifierState
	, Person.StudentIdentifierState AS Person_StudentIdentifierState
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
	, Person.GenerationCodeOrSuffix AS Person_GenerationCodeOrSuffix
	, Person.HighestLevelOfEducationCompletedCode AS Person_HighestLevelOfEducationCompletedCode
	, Person.HighestLevelOfEducationCompletedDescription AS Person_HighestLevelOfEducationCompletedDescription
	, Person_Current.FirstName AS Person_Current_FirstName
	, Person_Current.MiddleName AS Person_Current_MiddleName
	, Person_Current.LastOrSurname AS Person_Current_LastOrSurname
	, Person_Current.Birthdate AS Person_Current_Birthdate
	, Person_Current.ELChildChildIdentifierState AS Person_Current_ELChildChildIdentifierState
	, Person_Current.K12StudentStudentIdentifierState AS Person_Current_K12StudentStudentIdentifierState
	, Person_Current.K12StudentStudentIdentifierDistrict AS Person_Current_K12StudentStudentIdentifierDistrict
	, Person_Current.K12StudentStudentIdentifierNationalMigrant AS Person_Current_K12StudentStudentIdentifierNationalMigrant
	, Person_Current.PsStudentStudentIdentifierState AS Perso