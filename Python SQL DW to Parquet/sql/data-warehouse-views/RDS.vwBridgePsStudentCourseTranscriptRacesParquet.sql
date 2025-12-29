-- View: RDS.vwBridgePsStudentCourseTranscriptRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgePsStudentCourseTranscriptRacesParquet] AS
CREATE   VIEW RDS.vwBridgePsStudentCourseTranscriptRacesParquet AS SELECT fact.BridgeFactPsStudentCourseTranscriptRaceId
	, FactPsStudentCourseTranscript.NumberOfCreditsAttempted AS FactPsStudentCourseTranscript_NumberOfCreditsAttempted
	, FactPsStudentCourseTranscript.NumberOfCreditsEarned AS FactPsStudentCourseTranscript_NumberOfCreditsEarned
	, FactPsStudentCourseTranscript.StudentCourseSectionGradeEarned AS FactPsStudentCourseTranscript_StudentCourseSectionGradeEarned
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgePsStudentCourseTranscriptRaces fact
JOIN RDS.FactPsStudentCourseTranscripts FactPsStudentCourseTranscript
	ON Fact.FactPsStudentCourseTranscriptId = FactPsStudentCourseTranscript.FactPsStudentCourseTranscriptId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
