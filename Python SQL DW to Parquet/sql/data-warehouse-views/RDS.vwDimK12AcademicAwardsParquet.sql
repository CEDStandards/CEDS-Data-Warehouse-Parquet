-- View: RDS.vwDimK12AcademicAwardsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimK12AcademicAwardsParquet] AS
CREATE   VIEW RDS.vwDimK12AcademicAwardsParquet AS SELECT fact.DimK12AcademicAwardId
	, fact.AcademicAwardTitle
FROM RDS.DimK12AcademicAwards fact
