CREATE OR ALTER VIEW [RDS].[vwFactK12AcademicCalendarEventsParquet] AS
	SELECT fact.FactK12AcademicCalendarEventId
	, fact.SchoolYearId
	, fact.CalendarEventDateId
	, fact.StartTimeId
	, fact.EndTimeId
	, fact.SeaId
	, fact.IeuId
	, fact.LeaId
	, fact.K12SchoolId
	, fact.CalendarEventIndicatorId
	, fact.CalendarSessionIndicatorId
	, fact.CalendarSessionId
	, fact.MinutesPerDay
	, fact.InstructionalMinutesPerDay
	, fact.LunchMinutesPerDay
	, fact.RecessMinutesPerDay
	, fact.CalendarEventDayId
	, fact.AcademicTermDesignatorId
	, fact.CalendarCrisisId
	, fact.DataCollectionId
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
	, fact.RecordStatusId
FROM RDS.FactK12AcademicCalendarEvents fact
