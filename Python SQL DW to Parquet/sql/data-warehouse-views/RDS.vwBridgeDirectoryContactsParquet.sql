CREATE OR ALTER VIEW [RDS].[vwBridgeDirectoryContactsParquet] AS
	SELECT fact.BridgeDirectoryContactId
	, FactDirectory.LeaId AS FactDirectory_LeaId
	, FactDirectory.OrganizationId AS FactDirectory_OrganizationId
	, FactDirectory.SeaId AS FactDirectory_SeaId
	, FactDirectory.PsInstitutionID AS FactDirectory_PsInstitutionID
	, FactDirectory.IeuId AS FactDirectory_IeuId
	, FactDirectory.K12SchoolId AS FactDirectory_K12SchoolId
	, FactDirectory.AeProviderId AS FactDirectory_AeProviderId
	, FactDirectory.ComprehensiveAndTargetedSupportId AS FactDirectory_ComprehensiveAndTargetedSupportId
	, FactDirectory.NOrDStatusId AS FactDirectory_NOrDStatusId
	, FactDirectory.CharterSchoolManagementOrganizationId AS FactDirectory_CharterSchoolManagementOrganizationId
	, FactDirectory.CharterSchoolStatusId AS FactDirectory_CharterSchoolStatusId
	, FactDirectory.CharterSchoolAuthorizerId AS FactDirectory_CharterSchoolAuthorizerId
	, FactDirectory.AlternativeSchoolStatusId AS FactDirectory_AlternativeSchoolStatusId
	, FactDirectory.K12SchoolStatusId AS FactDirectory_K12SchoolStatusId
	, FactDirectory.EarlyChildhoodOrganizationStatusId AS FactDirectory_EarlyChildhoodOrganizationStatusId
	, FactDirectory.EarlyLearningOrganizationId AS FactDirectory_EarlyLearningOrganizationId
	, FactDirectory.DataCollectionId AS FactDirectory_DataCollectionId
	, FactDirectory.SchoolYearId AS FactDirectory_SchoolYearId
	, FactDirectory.OrganizationTitleIStatusId AS FactDirectory_OrganizationTitleIStatusId
	, FactDirectory.PsInstitutionStatusId AS FactDirectory_PsInstitutionStatusId
	, Contact.PersonalTitleOrPrefix AS Contact_PersonalTitleOrPrefix
	, Contact.FirstName AS Contact_FirstName
	, Contact.MiddleName AS Contact_MiddleName
	, Contact.LastOrSurname AS Contact_LastOrSurname
	, Contact.GenerationCodeOrSuffix AS Contact_GenerationCodeOrSuffix
	, Contact.PrimaryTelephoneNumberIndicator AS Contact_PrimaryTelephoneNumberIndicator
	, Contact.PositionTitle AS Contact_PositionTitle
	, Contact.ElectronicMailAddressWork AS Contact_ElectronicMailAddressWork
	, Contact.TelephoneNumberWork AS Contact_TelephoneNumberWork
	, fact.PrimaryContactIndicatorCode
	, fact.PrimaryContactIndicatorDescription
FROM RDS.BridgeDirectoryContacts fact
JOIN RDS.FactDirectory FactDirectory
	ON fact.FactDirectoryId = FactDirectory.FactDirectoryId
JOIN RDS.DimContacts Contact
	ON fact.ContactId = Contact.DimContactId
