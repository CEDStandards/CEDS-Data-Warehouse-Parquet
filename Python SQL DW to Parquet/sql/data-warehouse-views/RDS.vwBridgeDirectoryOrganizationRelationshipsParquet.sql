CREATE OR ALTER VIEW [RDS].[vwBridgeDirectoryOrganizationRelationshipsParquet] AS
	SELECT fact.BridgeDirectoryOrganizationRelationshipId
	, SubjectOrganizati.LeaId AS SubjectOrganizati_LeaId
	, SubjectOrganizati.OrganizationId AS SubjectOrganizati_OrganizationId
	, SubjectOrganizati.SeaId AS SubjectOrganizati_SeaId
	, SubjectOrganizati.PsInstitutionID AS SubjectOrganizati_PsInstitutionID
	, SubjectOrganizati.IeuId AS SubjectOrganizati_IeuId
	, SubjectOrganizati.K12SchoolId AS SubjectOrganizati_K12SchoolId
	, SubjectOrganizati.AeProviderId AS SubjectOrganizati_AeProviderId
	, SubjectOrganizati.ComprehensiveAndTargetedSupportI AS SubjectOrganizati_ComprehensiveAndTargetedSupportI
	, SubjectOrganizati.NOrDStatusId AS SubjectOrganizati_NOrDStatusId
	, SubjectOrganizati.CharterSchoolManagementOrganizationId AS SubjectOrganizati_CharterSchoolManagementOrganizationId
	, SubjectOrganizati.CharterSchoolStatusId AS SubjectOrganizati_CharterSchoolStatusId
	, SubjectOrganizati.CharterSchoolAuthorizerId AS SubjectOrganizati_CharterSchoolAuthorizerId
	, SubjectOrganizati.AlternativeSchoolStatusId AS SubjectOrganizati_AlternativeSchoolStatusId
	, SubjectOrganizati.K12SchoolStatusId AS SubjectOrganizati_K12SchoolStatusId
	, SubjectOrganizati.EarlyChildhoodOrganizationStatusId AS SubjectOrganizati_EarlyChildhoodOrganizationStatusId
	, SubjectOrganizati.EarlyLearningOrganizationId AS SubjectOrganizati_EarlyLearningOrganizationId
	, SubjectOrganizati.DataCollectionId AS SubjectOrganizati_DataCollectionId
	, SubjectOrganizati.SchoolYearId AS SubjectOrganizati_SchoolYearId
	, ObjectOrganizati.LeaId AS ObjectOrganizati_LeaId
	, ObjectOrganizati.OrganizationId AS ObjectOrganizati_OrganizationId
	, ObjectOrganizati.SeaId AS ObjectOrganizati_SeaId
	, ObjectOrganizati.PsInstitutionID AS ObjectOrganizati_PsInstitutionID
	, ObjectOrganizati.IeuId AS ObjectOrganizati_IeuId
	, ObjectOrganizati.K12SchoolId AS ObjectOrganizati_K12SchoolId
	, ObjectOrganizati.AeProviderId AS ObjectOrganizati_AeProviderId
	, ObjectOrganizati.ComprehensiveAndTargetedSupportI AS ObjectOrganizati_ComprehensiveAndTargetedSupportI
	, ObjectOrganizati.NOrDStatusId AS ObjectOrganizati_NOrDStatusId
	, ObjectOrganizati.CharterSchoolManagementOrganizationId AS ObjectOrganizati_CharterSchoolManagementOrganizationId
	, ObjectOrganizati.CharterSchoolStatusId AS ObjectOrganizati_CharterSchoolStatusId
	, ObjectOrganizati.CharterSchoolAuthorizerId AS ObjectOrganizati_CharterSchoolAuthorizerId
	, ObjectOrganizati.AlternativeSchoolStatusId AS ObjectOrganizati_AlternativeSchoolStatusId
	, ObjectOrganizati.K12SchoolStatusId AS ObjectOrganizati_K12SchoolStatusId
	, ObjectOrganizati.EarlyChildhoodOrganizationStatusId AS ObjectOrganizati_EarlyChildhoodOrganizationStatusId
	, ObjectOrganizati.EarlyLearningOrganizationId AS ObjectOrganizati_EarlyLearningOrganizationId
	, ObjectOrganizati.DataCollectionId AS ObjectOrganizati_DataCollectionId
	, ObjectOrganizati.SchoolYearId AS ObjectOrganizati_SchoolYearId
	, fact.RelationshipTypeCode
	, fact.RelationshipTypeDescription
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.BridgeDirectoryOrganizationRelationships fact
JOIN RDS.FactDirectory SubjectOrganizati
	ON fact.SubjectOrganization = SubjectOrganizati.FactDirectoryId
JOIN RDS.FactDirectory ObjectOrganizati
	ON fact.ObjectOrganization = ObjectOrganizati.FactDirectoryId
