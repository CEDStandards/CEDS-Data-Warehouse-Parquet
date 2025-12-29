-- View: RDS.vwFactPsStudentAcademicAwardsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwFactPsStudentAcademicAwardsParquet] AS
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
	, PsStudent.PsStudentStudentIdentifierState AS PsStudent_PsStudentStudentIdentifierState
	, PsStudent.AeStudentStudentIdentifierState AS PsStudent_AeStudentStudentIdentifierState
	, PsStudent.WorkforceProgramParticipantPersonIdentifierState AS PsStudent_WorkforceProgramParticipantPersonIdentifierState
	, PsStudent.ELStaffStaffMemberIdentifierState AS PsStudent_ELStaffStaffMemberIdentifierState
	, PsStudent.K12StaffStaffMemberIdentifierState AS PsStudent_K12StaffStaffMemberIdentifierState
	, PsStudent.K12StaffStaffMemberIdentifierDistrict AS PsStudent_K12StaffStaffMemberIdentifierDistrict
	, PsStudent.PsStaffStaffMemberIdentifierState AS PsStudent_PsStaffStaffMemberIdentifierState
	, PsStudent.PersonIdentifierDriversLicense AS PsStudent_PersonIdentifierDriversLicense
	, PsStudent.PersonIdentifierSSN AS PsStudent_PersonIdentifierSSN
	, PsStudent.PersonIdentifierState AS PsStudent_PersonIdentifierState
	, PsStudent.StudentIdentifierState AS PsStudent_StudentIdentifierState
	, PsStudent.IsActiveELChild AS PsStudent_IsActiveELChild
	, PsStudent.IsActiveK12Student AS PsStudent_IsActiveK12Student
	, PsStudent.IsActivePsStudent AS PsStudent_IsActivePsStudent
	, PsStudent.IsActiveAeStudent AS PsStudent_IsActiveAeStud