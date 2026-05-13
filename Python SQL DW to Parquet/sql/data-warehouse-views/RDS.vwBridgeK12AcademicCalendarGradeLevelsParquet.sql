CREATE OR ALTER VIEW [RDS].[vwBridgeK12AcademicCalendarGradelevelsParquet] AS
	SELECT fact.BridgeK12AcademicCalendarGradeLevelId
	, FactK12AcademicCalendar.SchoolYearId AS FactK12AcademicCalendar_SchoolYearId
	, FactK12AcademicCalendar.SeaId AS FactK12AcademicCalendar_SeaId
	, FactK12AcademicCalendar.IeuId AS FactK12AcademicCalendar_IeuId
	, FactK12AcademicCalendar.LeaId AS FactK12AcademicCalendar_LeaId
	, FactK12AcademicCalendar.K12SchoolId AS FactK12AcademicCalendar_K12SchoolId
	, FactK12AcademicCalendar.CalendarSessionId AS FactK12AcademicCalendar_CalendarSessionId
	, FactK12AcademicCalendar.CalendarSessionIndicatorId AS FactK12AcademicCalendar_CalendarSessionIndicatorId
	, FactK12AcademicCalendar.AcademicTermDesignatorId AS FactK12AcademicCalendar_AcademicTermDesignatorId
	, FactK12AcademicCalendar.CalendarCrisisId AS FactK12AcademicCalendar_CalendarCrisisId
	, FactK12AcademicCalendar.DataCollectionId AS FactK12AcademicCalendar_DataCollectionId
	, GradeLevel.GradeLevelCode AS GradeLevel_GradeLevelCode
	, GradeLevel.GradeLevelDescription AS GradeLevel_GradeLevelDescription
	, GradeLevel.GradeLevelEdFactsCode AS GradeLevel_GradeLevelEdFactsCode
FROM RDS.BridgeK12AcademicCalendarGradelevels fact
JOIN RDS.FactK12AcademicCalendars FactK12AcademicCalendar
	ON fact.FactK12AcademicCalendarId = FactK12AcademicCalendar.FactK12AcademicCalendarId
JOIN RDS.DimGradeLevels GradeLevel
	ON fact.GradeLevelId = GradeLevel.DimGradeLevelId
