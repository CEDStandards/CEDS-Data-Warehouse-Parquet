CREATE OR ALTER VIEW [RDS].[vwDimCalendarEventDaysParquet] AS
	SELECT fact.DimCalendarEventDayId
	, fact.CalendarEventDayName
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimCalendarEventDays fact
