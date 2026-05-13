CREATE OR ALTER VIEW [RDS].[vwFactK12SalarySchedulesParquet] AS
	SELECT fact.FactK12SalaryScheduleId
	, fact.SchoolYearId
	, fact.CountDateId
	, fact.DataCollectionId
	, fact.SeaId
	, fact.IeuId
	, fact.LeaId
	, fact.K12SchoolId
	, fact.SalaryScheduleCriteriaId
	, fact.StandardOccupationalClassificationId
	, fact.OnetSocOccupationTypeId
	, fact.SalaryScheduleSalaryValue
FROM RDS.FactK12SalarySchedules fact
