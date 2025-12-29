-- View: RDS.vwBridgeK12StaffCourseSectionGradeLevelsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StaffCourseSectionGradeLevelsParquet] AS
CREATE   VIEW RDS.vwBridgeK12StaffCourseSectionGradeLevelsParquet AS SELECT fact.BridgeK12StaffCourseSectionGradeLevelId
	, FactK12StaffCourseSection.K12StaffMemberCount AS FactK12StaffCourseSection_K12StaffMemberCount
	, FactK12StaffCourseSection.K12StudentCount AS FactK12StaffCourseSection_K12StudentCount
	, FactK12StaffCourseSection.AvailableCarnegieUnitCredit AS FactK12StaffCourseSection_AvailableCarnegieUnitCredit
	, FactK12StaffCourseSection.InstructionalMinutes AS FactK12StaffCourseSection_InstructionalMinutes
	, FactK12StaffCourseSection.RecordStartDateTime AS FactK12StaffCourseSection_RecordStartDateTime
	, FactK12StaffCourseSection.RecordEndDateTime AS FactK12StaffCourseSection_RecordEndDateTime
	, GradeLevel.GradeLevelCode AS GradeLevel_GradeLevelCode
	, GradeLevel.GradeLevelDescription AS GradeLevel_GradeLevelDescription
	, GradeLevel.GradeLevelEdFactsCode AS GradeLevel_GradeLevelEdFactsCode
FROM RDS.BridgeK12StaffCourseSectionGradeLevels fact
JOIN RDS.FactK12StaffCourseSections FactK12StaffCourseSection
	ON Fact.FactK12StaffCourseSectionId = FactK12StaffCourseSection.FactK12StaffCourseSectionId
JOIN RDS.DimGradeLevels GradeLevel
	ON Fact.GradeLevelId = GradeLevel.DimGradeLevelId
