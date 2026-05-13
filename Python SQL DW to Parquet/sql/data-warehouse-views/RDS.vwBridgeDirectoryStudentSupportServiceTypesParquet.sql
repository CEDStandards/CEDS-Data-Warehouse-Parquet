CREATE OR ALTER VIEW [RDS].[vwBridgeDirectoryStudentSupportServiceTypesParquet] AS
	SELECT fact.BridgeDirectoryStudentSupportServiceTypeId
	, FactDirectory.LeaId AS FactDirectory_LeaId
	, FactDirectory.OrganizationId AS FactDirectory_OrganizationId
	, FactDirectory.SeaId AS FactDirectory_SeaId
	, FactDirectory.PsInstitutionID AS FactDirectory_PsInstitutionID
	, FactDirectory.IeuId AS FactDirectory_IeuId
	, FactDirectory.K12SchoolId AS FactDirectory_K12SchoolId
	, FactDirectory.AeProviderId AS FactDirectory_AeProviderId
	, FactDirectory.ComprehensiveAndTargetedSupportI AS FactDirectory_ComprehensiveAndTargetedSupportI
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
	, StudentSupportServiceType.StudentSupportServiceTypeCode AS StudentSupportServiceType_StudentSupportServiceTypeCode
	, StudentSupportServiceType.StudentSupportServiceTypeDescription AS StudentSupportServiceType_StudentSupportServiceTypeDescription
FROM RDS.BridgeDirectoryStudentSupportServiceTypes fact
JOIN RDS.FactDirectory FactDirectory
	ON fact.FactDirectoryId = FactDirectory.FactDirectoryId
JOIN RDS.DimStudentSupportServiceTypes StudentSupportServiceType
	ON fact.StudentSupportServiceTypeId = StudentSupportServiceType.DimStudentSupportServiceTypeId
