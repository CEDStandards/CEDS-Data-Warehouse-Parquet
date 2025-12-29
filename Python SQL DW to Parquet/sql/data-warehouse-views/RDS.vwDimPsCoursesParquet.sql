-- View: RDS.vwDimPsCoursesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimPsCoursesParquet] AS
CREATE   VIEW RDS.vwDimPsCoursesParquet AS SELECT fact.DimPsCourseId
	, fact.CourseIdentifier
	, fact.CourseCodeSystemCode
	, fact.CourseCodeSystemDescription
	, fact.CourseSubjectAbbreviation
	, fact.CourseNumber
	, fact.CourseTitle
	, fact.CourseDescription
	, fact.CourseDepartmentName
	, fact.CourseCreditUnitsCode
	, fact.CourseCreditUnitsDescription
	, fact.CreditValue
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimPsCourses fact
