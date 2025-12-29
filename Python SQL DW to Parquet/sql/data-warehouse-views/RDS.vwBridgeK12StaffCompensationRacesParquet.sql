-- View: RDS.vwBridgeK12StaffCompensationRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StaffCompensationRacesParquet] AS
CREATE   VIEW RDS.vwBridgeK12StaffCompensationRacesParquet AS SELECT fact.BridgeK12StaffCompensationRace
	, FactK12StaffCompensation.RecordStartDateTime AS FactK12StaffCompensation_RecordStartDateTime
	, FactK12StaffCompensation.RecordEndDateTime AS FactK12StaffCompensation_RecordEndDateTime
	, FactK12StaffCompensation.StaffCompensation AS FactK12StaffCompensation_StaffCompensation
	, FactK12StaffCompensation.StaffCompensationDescription AS FactK12StaffCompensation_StaffCompensationDescription
	, FactK12StaffCompensation.FundingSourceAmount AS FactK12StaffCompensation_FundingSourceAmount
	, FactK12StaffCompensation.FundingSourcePercentage AS FactK12StaffCompensation_FundingSourcePercentage
	, FactK12StaffCompensation.FullTimeEquivalency AS FactK12StaffCompensation_FullTimeEquivalency
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeK12StaffCompensationRaces fact
JOIN RDS.FactK12StaffCompensations FactK12StaffCompensation
	ON Fact.FactK12StaffCompensationId = FactK12StaffCompensation.FactK12StaffCompensationId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
