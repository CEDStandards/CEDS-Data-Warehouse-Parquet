CREATE OR ALTER VIEW [RDS].[vwDimPsCoursesParquet] AS
	SELECT fact.DimPsCourseId
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
