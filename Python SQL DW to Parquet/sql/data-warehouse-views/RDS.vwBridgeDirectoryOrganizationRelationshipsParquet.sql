-- View: RDS.vwBridgeDirectoryOrganizationRelationshipsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeDirectoryOrganizationRelationshipsParquet] AS
CREATE   VIEW RDS.vwBridgeDirectoryOrganizationRelationshipsParquet AS SELECT fact.BridgeDirectoryOrganizationRelationshipId
	, SubjectOrganizati.ComprehensiveAndTargetedSupportI AS SubjectOrganizati_ComprehensiveAndTargetedSupportI
	, ObjectOrganizati.ComprehensiveAndTargetedSupportI AS ObjectOrganizati_ComprehensiveAndTargetedSupportI
	, fact.RelationshipTypeCode
	, fact.RelationshipTypeDescription
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.BridgeDirectoryOrganizationRelationships fact
JOIN RDS.FactDirectory SubjectOrganizati
	ON Fact.SubjectOrganization = SubjectOrganizati.FactDirectoryId
JOIN RDS.FactDirectory ObjectOrganizati
	ON Fact.ObjectOrganization = ObjectOrganizati.FactDirectoryId
