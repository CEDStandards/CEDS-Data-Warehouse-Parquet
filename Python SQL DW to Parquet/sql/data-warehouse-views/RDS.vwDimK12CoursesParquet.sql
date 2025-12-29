-- View: RDS.vwDimK12CoursesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimK12CoursesParquet] AS
CREATE   VIEW RDS.vwDimK12CoursesParquet AS SELECT fact.DimK12CourseId
	, fact.CourseIdentifier
	, fact.CourseCodeSystemCode
	, fact.CourseCodeSystemDescription
	, fact.CourseTitle
	, fact.CourseDescription
	, fact.CourseDepartmentName
	, fact.CourseCreditUnitsCode
	, fact.CourseCreditUnitsDescription
	, fact.CreditValue
	, fact.AdvancedPlacementCourseCode
	, fact.CareerClusterCode
	, fact.CareerClusterDescription
	, fact.CourseCertificationDescription
	, fact.TuitionFunded
	, fact.CourseFundingProgram
	, fact.CourseFundingProgramAllowed
	, fact.CoreAcademicCourseCode
	, fact.CoreAcademicCourseDescription
	, fact.CourseBeginDate
	, fact.CourseEndDate
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimK12Courses fact
