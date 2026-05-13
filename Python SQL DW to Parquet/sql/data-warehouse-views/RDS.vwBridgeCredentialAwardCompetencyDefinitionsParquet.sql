CREATE OR ALTER VIEW [RDS].[vwBridgeCredentialAwardCompetencyDefinitionsParquet] AS
	SELECT fact.BridgeCredentialAwardCompetencyDefinitionId
	, fact.FactCredentialAwardId
	, fact.CompetencyDefinitionId
FROM RDS.BridgeCredentialAwardCompetencyDefinitions fact
