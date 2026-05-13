CREATE OR ALTER VIEW [RDS].[vwDimK12CourseFundingsParquet] AS
	SELECT fact.DimK12CourseFundingId
	, fact.CourseFundingProgram
	, fact.CourseFundingProgramAllowed
FROM RDS.DimK12CourseFundings fact
