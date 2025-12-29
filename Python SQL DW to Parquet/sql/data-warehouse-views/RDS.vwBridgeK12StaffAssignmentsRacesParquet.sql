-- View: RDS.vwBridgeK12StaffAssignmentsRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StaffAssignmentsRacesParquet] AS
CREATE   VIEW RDS.vwBridgeK12StaffAssignmentsRacesParquet AS SELECT fact.BridgeK12StaffAssignmentRaceId
	, FactK12StaffAssignment.FullTimeEquivalency AS FactK12StaffAssignment_FullTimeEquivalency
	, FactK12StaffAssignment.K12StaffAssignmentCount AS FactK12StaffAssignment_K12StaffAssignmentCount
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeK12StaffAssignmentsRaces fact
JOIN RDS.FactK12StaffAssignments FactK12StaffAssignment
	ON Fact.FactK12StaffAssignmentId = FactK12StaffAssignment.FactK12StaffAssignmentId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
