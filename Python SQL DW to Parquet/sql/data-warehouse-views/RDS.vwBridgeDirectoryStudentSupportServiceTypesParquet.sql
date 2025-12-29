-- View: RDS.vwBridgeDirectoryStudentSupportServiceTypesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeDirectoryStudentSupportServiceTypesParquet] AS
CREATE   VIEW RDS.vwBridgeDirectoryStudentSupportServiceTypesParquet AS SELECT fact.BridgeDirectoryStudentSupportServiceTypeId
	, FactDirectory.ComprehensiveAndTargetedSupportI AS FactDirectory_ComprehensiveAndTargetedSupportI
	, StudentSupportServiceType.StudentSupportServiceTypeCode AS StudentSupportServiceType_StudentSupportServiceTypeCode
	, StudentSupportServiceType.StudentSupportServiceTypeDescription AS StudentSupportServiceType_StudentSupportServiceTypeDescription
FROM RDS.BridgeDirectoryStudentSupportServiceTypes fact
JOIN RDS.FactDirectory FactDirectory
	ON Fact.FactDirectoryId = FactDirectory.FactDirectoryId
JOIN RDS.DimStudentSupportServiceTypes StudentSupportServiceType
	ON Fact.StudentSupportServiceTypeId = StudentSupportServiceType.DimStudentSupportServiceTypeId
