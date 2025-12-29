-- View: RDS.vwBridgeK12AccessibleEducationMaterialRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12AccessibleEducationMaterialRacesParquet] AS
CREATE   VIEW RDS.vwBridgeK12AccessibleEducationMaterialRacesParquet AS SELECT fact.BridgeK12AccessibleEducationMaterialRaceId
	, FactK12AccessibleEducationMaterialAssignment.AssignmentCount AS FactK12AccessibleEducationMaterialAssignment_AssignmentCount
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeK12AccessibleEducationMaterialRaces fact
JOIN RDS.FactK12AccessibleEducationMaterialAssignments FactK12AccessibleEducationMaterialAssignment
	ON Fact.FactK12AccessibleEducationMaterialAssignmentId = FactK12AccessibleEducationMaterialAssignment.FactK12AccessibleEducationMaterialAssignmentId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
