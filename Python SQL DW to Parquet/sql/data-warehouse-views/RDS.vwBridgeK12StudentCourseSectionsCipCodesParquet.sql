-- View: RDS.vwBridgeK12StudentCourseSectionsCipCodesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StudentCourseSectionsCipCodesParquet] AS
CREATE   VIEW RDS.vwBridgeK12StudentCourseSectionsCipCodesParquet AS SELECT fact.BridgeK12StudentCourseSectionsCipCodeId
	, FactK12StudentCourseSection.MidTermMark AS FactK12StudentCourseSection_MidTermMark
	, FactK12StudentCourseSection.NumberOfCreditsAttempted AS FactK12StudentCourseSection_NumberOfCreditsAttempted
	, FactK12StudentCourseSection.NumberOfCreditsEarned AS FactK12StudentCourseSection_NumberOfCreditsEarned
	, FactK12StudentCourseSection.StudentCourseSectionGradeEarned AS FactK12StudentCourseSection_StudentCourseSectionGradeEarned
	, FactK12StudentCourseSection.StudentCourseSectionGradeNarrative AS FactK12StudentCourseSection_StudentCourseSectionGradeNarrative
	, FactK12StudentCourseSection.StudentCourseSectionCount AS FactK12StudentCourseSection_StudentCourseSectionCount
	, FactK12StudentCourseSection.RecordStartDateTime AS FactK12StudentCourseSection_RecordStartDateTime
	, FactK12StudentCourseSection.RecordEndDateTime AS FactK12StudentCourseSection_RecordEndDateTime
	, CipCode.CipCode AS CipCode_CipCode
	, CipCode.CipDescription AS CipCode_CipDescription
	, CipCode.CipUseCode AS CipCode_CipUseCode
	, CipCode.CipUseDescription AS CipCode_CipUseDescription
	, CipCode.CipVersionCode AS CipCode_CipVersionCode
	, CipCode.CipVersionDescription AS CipCode_CipVersionDescription
FROM RDS.BridgeK12StudentCourseSectionsCipCodes fact
JOIN RDS.FactK12StudentCourseSections FactK12StudentCourseSection
	ON Fact.FactK12StudentCourseSectionId = FactK12StudentCourseSection.FactK12StudentCourseSectionId
JOIN RDS.DimCipCodes CipCode
	ON Fact.CipCodeId = CipCode.DimCipCodeId
