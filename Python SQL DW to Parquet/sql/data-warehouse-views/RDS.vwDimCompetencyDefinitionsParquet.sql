-- View: RDS.vwDimCompetencyDefinitionsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimCompetencyDefinitionsParquet] AS
CREATE   VIEW RDS.vwDimCompetencyDefinitionsParquet AS SELECT fact.DimCompetencyDefinitionId
	, fact.CompetencyDefinitionIdentifier
	, fact.CompetencyDefinitionCode
	, fact.CompetencyDefinitionShortName
	, fact.CompetencyDefinitionStatement
	, fact.CompetencyDefinitionType
	, fact.CompetencyDefinitionValidStartDate
	, fact.CompetencyDefinitionValidEndDate
FROM RDS.DimCompetencyDefinitions fact
