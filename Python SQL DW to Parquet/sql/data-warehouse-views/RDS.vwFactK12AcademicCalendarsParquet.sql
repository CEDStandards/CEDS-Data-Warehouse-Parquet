CREATE OR ALTER VIEW [RDS].[vwFactK12AcademicCalendarsParquet] AS
	SELECT fact.FactK12AcademicCalendarId
	, fact.SchoolYearId
	, fact.SeaId
	, fact.IeuId
	, fact.LeaId
	, fact.K12SchoolId
	, fact.CalendarSessionId
	, fact.CalendarSessionIndicatorId
	, fact.AcademicTermDesignatorId
	, fact.CalendarCrisisId
	, fact.DataCollectionId
FROM RDS.FactK12AcademicCalendars fact
