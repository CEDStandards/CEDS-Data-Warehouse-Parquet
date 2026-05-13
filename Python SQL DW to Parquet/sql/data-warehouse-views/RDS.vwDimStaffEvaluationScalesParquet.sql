CREATE OR ALTER VIEW [RDS].[vwDimStaffEvaluationScalesParquet] AS
	SELECT fact.DimStaffEvaluationScaleId
	, fact.StaffEvaluationScaleCode
	, fact.StaffEvaluationScaleDescription
FROM RDS.DimStaffEvaluationScales fact
