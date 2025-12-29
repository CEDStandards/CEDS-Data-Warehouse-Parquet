-- View: RDS.vwDimCalendarEventDaysParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimCalendarEventDaysParquet] AS
CREATE   VIEW RDS.vwDimCalendarEventDaysParquet AS SELECT fact.DimCalendarEventDayId
	, fact.CalendarEventDayName
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimCalendarEventDays fact
