-- View: RDS.vwBridgeK12StaffAssessmentRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StaffAssessmentRacesParquet] AS
CREATE   VIEW RDS.vwBridgeK12StaffAssessmentRacesParquet AS SELECT fact.BridgeK12StaffAssessmentRaceId
	, FactK12StaffAssessment.AssessmentResultScoreValueRawScore AS FactK12StaffAssessment_AssessmentResultScoreValueRawScore
	, FactK12StaffAssessment.AssessmentResultScoreValueScaleScore AS FactK12StaffAssessment_AssessmentResultScoreValueScaleScore
	, FactK12StaffAssessment.AssessmentResultScoreValuePassFail AS FactK12StaffAssessment_AssessmentResultScoreValuePassFail
	, FactK12StaffAssessment.AssessmentResultScoreValuePercentile AS FactK12StaffAssessment_AssessmentResultScoreValuePercentile
	, FactK12StaffAssessment.AssessmentResultScoreValueTScore AS FactK12StaffAssessment_AssessmentResultScoreValueTScore
	, FactK12StaffAssessment.AssessmentResultScoreValueZScore AS FactK12StaffAssessment_AssessmentResultScoreValueZScore
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeK12StaffAssessmentRaces fact
JOIN RDS.FactK12StaffAssessments FactK12StaffAssessment
	ON Fact.FactK12StaffAssessmentId = FactK12StaffAssessment.FactK12StaffAssessmentId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
