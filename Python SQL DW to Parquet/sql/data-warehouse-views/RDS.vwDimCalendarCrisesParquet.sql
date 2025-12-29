-- View: RDS.vwDimCalendarCrisesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimCalendarCrisesParquet] AS
CREATE   VIEW RDS.vwDimCalendarCrisesParquet AS SELECT fact.DimCalendarCrisisId
	, fact.CrisisCode
	, fact.CrisisName
	, fact.CrisisDescription
	, fact.CrisisStartDate
	, fact.CrisisEndDate
	, fact.CrisisType
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimCalendarCrises fact
