-- View: RDS.vwBridgeK12ProgramParticipationRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12ProgramParticipationRacesParquet] AS
CREATE   VIEW RDS.vwBridgeK12ProgramParticipationRacesParquet AS SELECT fact.BridgeK12ProgramParticipationId
	, FactK12ProgramParticipation.StudentCount AS FactK12ProgramParticipation_StudentCount
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeK12ProgramParticipationRaces fact
JOIN RDS.FactK12ProgramParticipations FactK12ProgramParticipation
	ON Fact.FactK12ProgramParticipationId = FactK12ProgramParticipation.FactK12ProgramParticipationId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
