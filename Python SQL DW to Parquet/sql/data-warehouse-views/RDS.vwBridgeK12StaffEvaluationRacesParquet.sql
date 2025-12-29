-- View: RDS.vwBridgeK12StaffEvaluationRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StaffEvaluationRacesParquet] AS
CREATE   VIEW RDS.vwBridgeK12StaffEvaluationRacesParquet AS SELECT fact.BridgeK12StaffEvaluationRaceId
	, FactK12StaffEvaluation.StaffEvaluationOutcome AS FactK12StaffEvaluation_StaffEvaluationOutcome
	, FactK12StaffEvaluation.StaffEvaluationPartScale AS FactK12StaffEvaluation_StaffEvaluationPartScale
	, FactK12StaffEvaluation.StaffEvaluationPartScoreOrRating AS FactK12StaffEvaluation_StaffEvaluationPartScoreOrRating
	, FactK12StaffEvaluation.StaffEvaluationScale AS FactK12StaffEvaluation_StaffEvaluationScale
	, FactK12StaffEvaluation.StaffEvaluationScoreOrRating AS FactK12StaffEvaluation_StaffEvaluationScoreOrRating
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeK12StaffEvaluationRaces fact
JOIN RDS.FactK12StaffEvaluationParts FactK12StaffEvaluation
	ON Fact.FactK12StaffEvaluationId = FactK12StaffEvaluation.FactK12StaffEvaluationPartId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
