-- View: RDS.vwDimCalendarSessionsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimCalendarSessionsParquet] AS
CREATE   VIEW RDS.vwDimCalendarSessionsParquet AS SELECT fact.DimCalendarSessionId
	, fact.CalendarCode
	, fact.CalendarDescription
	, fact.SessionBeginDate
	, fact.SessionEndDate
	, fact.SessionCode
	, fact.SessionDescription
	, fact.SessionSequenceNumber
	, fact.FirstInstructionDate
	, fact.LastInstructionDate
	, fact.DaysInSession
	, fact.SchoolYearMinutes
	, fact.InstructionalMinutes
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimCalendarSessions fact
