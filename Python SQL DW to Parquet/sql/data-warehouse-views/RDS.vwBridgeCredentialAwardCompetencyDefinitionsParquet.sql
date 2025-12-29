-- View: RDS.vwBridgeCredentialAwardCompetencyDefinitionsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeCredentialAwardCompetencyDefinitionsParquet] AS
CREATE   VIEW RDS.vwBridgeCredentialAwardCompetencyDefinitionsParquet AS SELECT fact.BridgeCredentialAwardCompetencyDefinitionId
	, FactCredentialAward.CredentialAwardCount AS FactCredentialAward_CredentialAwardCount
	, CompetencyDefinition.CompetencyDefinitionIdentifier AS CompetencyDefinition_CompetencyDefinitionIdentifier
	, CompetencyDefinition.CompetencyDefinitionCode AS CompetencyDefinition_CompetencyDefinitionCode
	, CompetencyDefinition.CompetencyDefinitionShortName AS CompetencyDefinition_CompetencyDefinitionShortName
	, CompetencyDefinition.CompetencyDefinitionStatement AS CompetencyDefinition_CompetencyDefinitionStatement
	, CompetencyDefinition.CompetencyDefinitionType AS CompetencyDefinition_CompetencyDefinitionType
	, CompetencyDefinition.CompetencyDefinitionValidStartDate AS CompetencyDefinition_CompetencyDefinitionValidStartDate
	, CompetencyDefinition.CompetencyDefinitionValidEndDate AS CompetencyDefinition_CompetencyDefinitionValidEndDate
FROM RDS.BridgeCredentialAwardCompetencyDefinitions fact
JOIN RDS.FactCredentialAwards FactCredentialAward
	ON Fact.FactCredentialAwardId = FactCredentialAward.FactCredentialAwardId
JOIN RDS.DimCompetencyDefinitions CompetencyDefinition
	ON Fact.CompetencyDefinitionId = CompetencyDefinition.DimCompetencyDefinitionId
