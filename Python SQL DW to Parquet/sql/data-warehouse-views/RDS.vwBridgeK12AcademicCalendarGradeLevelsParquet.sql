-- View: RDS.vwBridgeK12AcademicCalendarGradeLevelsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12AcademicCalendarGradeLevelsParquet] AS
CREATE   VIEW RDS.vwBridgeK12AcademicCalendarGradeLevelsParquet AS SELECT fact.BridgeK12AcademicCalendarGradeLevelId
	, GradeLevel.GradeLevelCode AS GradeLevel_GradeLevelCode
	, GradeLevel.GradeLevelDescription AS GradeLevel_GradeLevelDescription
	, GradeLevel.GradeLevelEdFactsCode AS GradeLevel_GradeLevelEdFactsCode
FROM RDS.BridgeK12AcademicCalendarGradeLevels fact
JOIN RDS.FactK12AcademicCalendars FactK12AcademicCalendar
	ON Fact.FactK12AcademicCalendarId = FactK12AcademicCalendar.FactK12AcademicCalendarId
JOIN RDS.DimGradeLevels GradeLevel
	ON Fact.GradeLevelId = GradeLevel.DimGradeLevelId
