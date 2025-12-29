-- View: RDS.vwBridgeDirectoryProgramTypesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeDirectoryProgramTypesParquet] AS
CREATE   VIEW RDS.vwBridgeDirectoryProgramTypesParquet AS SELECT fact.BridgeDirectoryK12ProgramTypeId
	, FactDirectory.ComprehensiveAndTargetedSupportI AS FactDirectory_ComprehensiveAndTargetedSupportI
	, ProgramType.ProgramTypeCode AS ProgramType_ProgramTypeCode
	, ProgramType.ProgramTypeDescription AS ProgramType_ProgramTypeDescription
FROM RDS.BridgeDirectoryProgramTypes fact
JOIN RDS.FactDirectory FactDirectory
	ON Fact.FactDirectoryId = FactDirectory.FactDirectoryId
JOIN RDS.DimProgramTypes ProgramType
	ON Fact.ProgramTypeId = ProgramType.DimProgramTypeId
