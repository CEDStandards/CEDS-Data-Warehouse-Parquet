-- View: RDS.vwBridgeK12StudentEconomicDisadvantageRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StudentEconomicDisadvantageRacesParquet] AS
CREATE   VIEW RDS.vwBridgeK12StudentEconomicDisadvantageRacesParquet AS SELECT fact.BridgeK12StudentEconomicDisadvantageRaceId
	, FactK12StudentEconomicDisadvantage.NcesSideEstimate AS FactK12StudentEconomicDisadvantage_NcesSideEstimate
	, FactK12StudentEconomicDisadvantage.NcesSideStandardError AS FactK12StudentEconomicDisadvantage_NcesSideStandardError
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeK12StudentEconomicDisadvantageRaces fact
JOIN RDS.FactK12StudentEconomicDisadvantages FactK12StudentEconomicDisadvantage
	ON Fact.FactK12StudentEconomicDisadvantageId = FactK12StudentEconomicDisadvantage.FactK12StudentEconomicDisadvantageId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
