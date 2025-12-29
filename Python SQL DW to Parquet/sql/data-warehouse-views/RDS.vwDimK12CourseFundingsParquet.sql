-- View: RDS.vwDimK12CourseFundingsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimK12CourseFundingsParquet] AS
CREATE   VIEW RDS.vwDimK12CourseFundingsParquet AS SELECT fact.DimK12CourseFundingId
	, fact.CourseFundingProgram
	, fact.CourseFundingProgramAllowed
FROM RDS.DimK12CourseFundings fact
