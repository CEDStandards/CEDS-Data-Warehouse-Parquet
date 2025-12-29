-- View: RDS.vwBridgeK12AcademicCalendarEventGradeLevelsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12AcademicCalendarEventGradeLevelsParquet] AS
CREATE   VIEW RDS.vwBridgeK12AcademicCalendarEventGradeLevelsParquet AS SELECT fact.BridgeK12AcademicCalendarEventGradeLevelId
	, FactK12AcademicCalendarEvent.MinutesPerDay AS FactK12AcademicCalendarEvent_MinutesPerDay
	, FactK12AcademicCalendarEvent.InstructionalMinutesPerDay AS FactK12AcademicCalendarEvent_InstructionalMinutesPerDay
	, FactK12AcademicCalendarEvent.LunchMinutesPerDay AS FactK12AcademicCalendarEvent_LunchMinutesPerDay
	, FactK12AcademicCalendarEvent.RecessMinutesPerDay AS FactK12AcademicCalendarEvent_RecessMinutesPerDay
	, FactK12AcademicCalendarEvent.RecordStartDateTime AS FactK12AcademicCalendarEvent_RecordStartDateTime
	, FactK12AcademicCalendarEvent.RecordEndDateTime AS FactK12AcademicCalendarEvent_RecordEndDateTime
	, GradeLevel.GradeLevelCode AS GradeLevel_GradeLevelCode
	, GradeLevel.GradeLevelDescription AS GradeLevel_GradeLevelDescription
	, GradeLevel.GradeLevelEdFactsCode AS GradeLevel_GradeLevelEdFactsCode
FROM RDS.BridgeK12AcademicCalendarEventGradeLevels fact
JOIN RDS.FactK12AcademicCalendarEvents FactK12AcademicCalendarEvent
	ON Fact.FactK12AcademicCalendarEventId = FactK12AcademicCalendarEvent.FactK12AcademicCalendarEventId
JOIN RDS.DimGradeLevels GradeLevel
	ON Fact.GradeLevelId = GradeLevel.DimGradeLevelId
