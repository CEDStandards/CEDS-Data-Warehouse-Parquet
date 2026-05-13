CREATE OR ALTER VIEW [RDS].[vwFactK12StudentDailyAttendancesParquet] AS
	SELECT fact.FactK12StudentDailyAttendanceId
	, fact.SchoolYearId
	, fact.AttendanceEventDateId
	, fact.DataCollectionId
	, fact.SeaId
	, fact.IeuId
	, fact.LeaId
	, fact.K12SchoolId
	, fact.PersonId
	, fact.Person_CurrentId
	, fact.AttendanceId
	, fact.AttendanceEventDurationDay
	, fact.AttendanceEventDurationMinutes
	, fact.AttendanceEventDurationHours
FROM RDS.FactK12StudentDailyAttendances fact
