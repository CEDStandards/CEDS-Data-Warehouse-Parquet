-- View: RDS.vwDimK12CourseSectionsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimK12CourseSectionsParquet] AS
CREATE   VIEW RDS.vwDimK12CourseSectionsParquet AS SELECT fact.DimK12CourseSectionId
	, fact.CourseSectionIdentifier
	, fact.ClassPeriod
	, fact.ClassMeetingDays
	, fact.ClassroomIdentifier
	, fact.GradeValueQualifier
	, fact.CourseDescription
	, fact.TimetableDayIdentifier
FROM RDS.DimK12CourseSections fact
