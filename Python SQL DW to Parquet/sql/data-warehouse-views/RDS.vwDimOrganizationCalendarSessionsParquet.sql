CREATE OR ALTER VIEW [RDS].[vwDimOrganizationCalendarSessionsParquet] AS
	SELECT fact.DimOrganizationCalendarSessionId
	, fact.SessionBeginDate
	, fact.SessionEndDate
	, fact.SessionCode
	, fact.SessionDescription
	, fact.AcademicTermDesignatorCode
	, fact.AcademicTermDesignatorDescription
FROM RDS.DimOrganizationCalendarSessions fact
