-- View: RDS.vwBridgeK12StudentCourseSectionRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StudentCourseSectionRacesParquet] AS
CREATE   VIEW RDS.vwBridgeK12StudentCourseSectionRacesParquet AS SELECT fact.BridgeK12StudentCourseSectionRaceId
	, FactK12StudentCourseSection.MidTermMark AS FactK12StudentCourseSection_MidTermMark
	, FactK12StudentCourseSection.NumberOfCreditsAttempted AS FactK12StudentCourseSection_NumberOfCreditsAttempted
	, FactK12StudentCourseSection.NumberOfCreditsEarned AS FactK12StudentCourseSection_NumberOfCreditsEarned
	, FactK12StudentCourseSection.StudentCourseSectionGradeEarned AS FactK12StudentCourseSection_StudentCourseSectionGradeEarned
	, FactK12StudentCourseSection.StudentCourseSectionGradeNarrative AS FactK12StudentCourseSection_StudentCourseSectionGradeNarrative
	, FactK12StudentCourseSection.StudentCourseSectionCount AS FactK12StudentCourseSection_StudentCourseSectionCount
	, FactK12StudentCourseSection.RecordStartDateTime AS FactK12StudentCourseSection_RecordStartDateTime
	, FactK12StudentCourseSection.RecordEndDateTime AS FactK12StudentCourseSection_RecordEndDateTime
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeK12StudentCourseSectionRaces fact
JOIN RDS.FactK12StudentCourseSections FactK12StudentCourseSection
	ON Fact.FactK12StudentCourseSectionId = FactK12StudentCourseSection.FactK12StudentCourseSectionId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
