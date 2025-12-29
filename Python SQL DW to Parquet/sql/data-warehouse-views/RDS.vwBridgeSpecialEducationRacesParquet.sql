-- View: RDS.vwBridgeSpecialEducationRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeSpecialEducationRacesParquet] AS
CREATE   VIEW RDS.vwBridgeSpecialEducationRacesParquet AS SELECT fact.BridgeSpecialEducationRaceId
	, FactSpecialEducation.FullTimeEquivalency AS FactSpecialEducation_FullTimeEquivalency
	, FactSpecialEducation.SpecialEducationFTE AS FactSpecialEducation_SpecialEducationFTE
	, FactSpecialEducation.StudentCount AS FactSpecialEducation_StudentCount
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeSpecialEducationRaces fact
JOIN RDS.FactSpecialEducation FactSpecialEducation
	ON Fact.FactSpecialEducationId = FactSpecialEducation.FactSpecialEducationId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
