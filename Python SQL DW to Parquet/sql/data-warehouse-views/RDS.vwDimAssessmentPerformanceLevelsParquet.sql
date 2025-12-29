-- View: RDS.vwDimAssessmentPerformanceLevelsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimAssessmentPerformanceLevelsParquet] AS
CREATE   VIEW RDS.vwDimAssessmentPerformanceLevelsParquet AS SELECT fact.DimAssessmentPerformanceLevelId
	, fact.AssessmentPerformanceLevelIdentifier
	, fact.AssessmentPerformanceLevelLabel
	, fact.AssessmentPerformanceLevelScoreMetric
	, fact.AssessmentPerformanceLevelLowerCutScore
	, fact.AssessmentPerformanceLevelUpperCutScore
FROM RDS.DimAssessmentPerformanceLevels fact
