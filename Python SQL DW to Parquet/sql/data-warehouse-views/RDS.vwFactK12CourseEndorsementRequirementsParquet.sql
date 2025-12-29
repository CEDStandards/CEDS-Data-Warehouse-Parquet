-- View: RDS.vwFactK12CourseEndorsementRequirementsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwFactK12CourseEndorsementRequirementsParquet] AS
CREATE   VIEW RDS.vwFactK12CourseEndorsementRequirementsParquet AS SELECT fact.FactK12CourseEndorsementRequirementId
	, K12Course.CourseIdentifier AS K12Course_CourseIdentifier
	, K12Course.CourseCodeSystemCode AS K12Course_CourseCodeSystemCode
	, K12Course.CourseCodeSystemDescription AS K12Course_CourseCodeSystemDescription
	, K12Course.CourseTitle AS K12Course_CourseTitle
	, K12Course.CourseDescription AS K12Course_CourseDescription
	, K12Course.CourseDepartmentName AS K12Course_CourseDepartmentName
	, K12Course.CourseCreditUnitsCode AS K12Course_CourseCreditUnitsCode
	, K12Course.CourseCreditUnitsDescription AS K12Course_CourseCreditUnitsDescription
	, K12Course.CreditValue AS K12Course_CreditValue
	, K12Course.AdvancedPlacementCourseCode AS K12Course_AdvancedPlacementCourseCode
	, K12Course.CareerClusterCode AS K12Course_CareerClusterCode
	, K12Course.CareerClusterDescription AS K12Course_CareerClusterDescription
	, K12Course.CourseCertificationDescription AS K12Course_CourseCertificationDescription
	, K12Course.TuitionFunded AS K12Course_TuitionFunded
	, K12Course.CourseFundingProgram AS K12Course_CourseFundingProgram
	, K12Course.CourseFundingProgramAllowed AS K12Course_CourseFundingProgramAllowed
	, K12Course.CoreAcademicCourseCode AS K12Course_CoreAcademicCourseCode
	, K12Course.CoreAcademicCourseDescription AS K12Course_CoreAcademicCourseDescription
	, K12Course.CourseBeginDate AS K12Course_CourseBeginDate
	, K12Course.CourseEndDate AS K12Course_CourseEndDate
	, K12Course.RecordStartDateTime AS K12Course_RecordStartDateTime
	, K12Course.RecordEndDateTime AS K12Course_RecordEndDateTime
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
	, fact.CourseEndorsementRequirementCount
FROM RDS.FactK12CourseEndorsementRequirements fact
JOIN RDS.DimK12Courses K12Course
	ON Fact.K12CourseId = K12Course.DimK12CourseId
