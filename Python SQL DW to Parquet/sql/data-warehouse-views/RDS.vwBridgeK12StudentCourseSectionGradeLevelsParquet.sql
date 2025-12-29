-- View: RDS.vwBridgeK12StudentCourseSectionGradeLevelsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StudentCourseSectionGradeLevelsParquet] AS
CREATE   VIEW RDS.vwBridgeK12StudentCourseSectionGradeLevelsParquet AS SELECT fact.BridgeK12StudentCourseSectionGradeLevelId
	, FactK12StudentCourseSection.MidTermMark AS FactK12StudentCourseSection_MidTermMark
	, FactK12StudentCourseSection.NumberOfCreditsAttempted AS FactK12StudentCourseSection_NumberOfCreditsAttempted
	, FactK12StudentCourseSection.NumberOfCreditsEarned AS FactK12StudentCourseSection_NumberOfCreditsEarned
	, FactK12StudentCourseSection.StudentCourseSectionGradeEarned AS FactK12StudentCourseSection_StudentCourseSectionGradeEarned
	, FactK12StudentCourseSection.StudentCourseSectionGradeNarrative AS FactK12StudentCourseSection_StudentCourseSectionGradeNarrative
	, FactK12StudentCourseSection.StudentCourseSectionCount AS FactK12StudentCourseSection_StudentCourseSectionCount
	, FactK12StudentCourseSection.RecordStartDateTime AS FactK12StudentCourseSection_RecordStartDateTime
	, FactK12StudentCourseSection.RecordEndDateTime AS FactK12StudentCourseSection_RecordEndDateTime
	, GradeLevel.GradeLevelCode AS GradeLevel_GradeLevelCode
	, GradeLevel.GradeLevelDescription AS GradeLevel_GradeLevelDescription
	, GradeLevel.GradeLevelEdFactsCode AS GradeLevel_GradeLevelEdFactsCode
FROM RDS.BridgeK12StudentCourseSectionGradeLevels fact
JOIN RDS.FactK12StudentCourseSections FactK12StudentCourseSection
	ON Fact.FactK12StudentCourseSectionId = FactK12StudentCourseSection.FactK12StudentCourseSectionId
JOIN RDS.DimGradeLevels GradeLevel
	ON Fact.GradeLevelId = GradeLevel.DimGradeLevelId
