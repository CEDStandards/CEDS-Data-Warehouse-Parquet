-- View: RDS.vwBridgeK12StudentDisciplineRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StudentDisciplineRacesParquet] AS
CREATE   VIEW RDS.vwBridgeK12StudentDisciplineRacesParquet AS SELECT fact.BridgeK12StudentDisciplineRaceId
	, FactK12StudentDiscipline.IncidentIdentifier AS FactK12StudentDiscipline_IncidentIdentifier
	, FactK12StudentDiscipline.DurationOfDisciplinaryAction AS FactK12StudentDiscipline_DurationOfDisciplinaryAction
	, FactK12StudentDiscipline.DisciplineCount AS FactK12StudentDiscipline_DisciplineCount
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeK12StudentDisciplineRaces fact
JOIN RDS.FactK12StudentDisciplines FactK12StudentDiscipline
	ON Fact.FactK12StudentDisciplineId = FactK12StudentDiscipline.FactK12StudentDisciplineId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
