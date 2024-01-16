CREATE   VIEW RDS.vwDimPeopleParquet AS SELECT fact.DimPersonId
	, fact.FirstName
	, fact.MiddleName
	, fact.LastOrSurname
	, fact.BirthDate
	, fact.ELChildChildIdentifierState
	, fact.K12StudentStudentIdentifierState
	, fact.K12StudentStudentIdentifierDistrict
	, fact.K12StudentStudentIdentifierNationalMigrant
	, fact.PsStudentStudentIdentifierState
	, fact.AeStudentStudentIdentifierState
	, fact.WorkforceProgramParticipantPersonIdentifierState
	, fact.ELStaffStaffMemberIdentifierState
	, fact.K12StaffStaffMemberIdentifierState
	, fact.K12StaffStaffMemberIdentifierDistrict
	, fact.PsStaffStaffMemberIdentifierState
	, fact.PersonIdentifierDriversLicense
	, fact.IsActiveELChild
	, fact.IsActiveK12Student
	, fact.IsActivePsStudent
	, fact.IsActiveAeStudent
	, fact.IsActiveWorkforceProgramParticipant
	, fact.IsActiveELStaff
	, fact.IsActiveK12Staff
	, fact.IsActivePsStaff
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
	, fact.ElectronicMailAddressHome
	, fact.ElectronicMailAddressOrganizational
	, fact.ElectronicMailAddressWork
	, fact.TelephoneNumberFax
	, fact.TelephoneNumberHome
	, fact.TelephoneNumberMobile
	, fact.TelephoneNumberWork
	, fact.PersonalTitleOrPrefix
	, fact.PositionTitle
FROM RDS.DimPeople fact

