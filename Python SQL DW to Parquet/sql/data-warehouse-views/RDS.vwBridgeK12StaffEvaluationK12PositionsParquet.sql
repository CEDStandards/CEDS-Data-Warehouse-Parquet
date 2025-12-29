-- View: RDS.vwBridgeK12StaffEvaluationK12PositionsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StaffEvaluationK12PositionsParquet] AS
CREATE   VIEW RDS.vwBridgeK12StaffEvaluationK12PositionsParquet AS SELECT fact.BridgeK12StaffEvaluationK12PositionId
	, FactK12StaffEvaluation.StaffEvaluationOutcome AS FactK12StaffEvaluation_StaffEvaluationOutcome
	, FactK12StaffEvaluation.StaffEvaluationPartScale AS FactK12StaffEvaluation_StaffEvaluationPartScale
	, FactK12StaffEvaluation.StaffEvaluationPartScoreOrRating AS FactK12StaffEvaluation_StaffEvaluationPartScoreOrRating
	, FactK12StaffEvaluation.StaffEvaluationScale AS FactK12StaffEvaluation_StaffEvaluationScale
	, FactK12StaffEvaluation.StaffEvaluationScoreOrRating AS FactK12StaffEvaluation_StaffEvaluationScoreOrRating
	, K12Position.JobPositionIdentifierSea AS K12Position_JobPositionIdentifierSea
	, K12Position.JobPositionIdentifierLea AS K12Position_JobPositionIdentifierLea
	, K12Position.JobPositionIdentifierSchool AS K12Position_JobPositionIdentifierSchool
	, K12Position.PositionTitle AS K12Position_PositionTitle
	, K12Position.HourlyWage AS K12Position_HourlyWage
	, K12Position.StaffCompensationBaseSalary AS K12Position_StaffCompensationBaseSalary
FROM RDS.BridgeK12StaffEvaluationK12Positions fact
JOIN RDS.FactK12StaffEvaluationParts FactK12StaffEvaluation
	ON Fact.FactK12StaffEvaluationId = FactK12StaffEvaluation.FactK12StaffEvaluationPartId
JOIN RDS.DimK12JobPositions K12Position
	ON Fact.K12PositionId = K12Position.DimK12JobPositionId
