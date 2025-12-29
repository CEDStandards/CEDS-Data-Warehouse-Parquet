-- View: RDS.vwBridgeK12StaffAssignmentGradeLevelsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StaffAssignmentGradeLevelsParquet] AS
CREATE   VIEW RDS.vwBridgeK12StaffAssignmentGradeLevelsParquet AS SELECT fact.BridgeK12StaffAssignmentGradeLevelId
	, FactK12StaffAssignment.FullTimeEquivalency AS FactK12StaffAssignment_FullTimeEquivalency
	, FactK12StaffAssignment.K12StaffAssignmentCount AS FactK12StaffAssignment_K12StaffAssignmentCount
	, GradeLevel.GradeLevelCode AS GradeLevel_GradeLevelCode
	, GradeLevel.GradeLevelDescription AS GradeLevel_GradeLevelDescription
	, GradeLevel.GradeLevelEdFactsCode AS GradeLevel_GradeLevelEdFactsCode
FROM RDS.BridgeK12StaffAssignmentGradeLevels fact
JOIN RDS.FactK12StaffAssignments FactK12StaffAssignment
	ON Fact.FactK12StaffAssignmentId = FactK12StaffAssignment.FactK12StaffAssignmentId
JOIN RDS.DimGradeLevels GradeLevel
	ON Fact.GradeLevelId = GradeLevel.DimGradeLevelId
