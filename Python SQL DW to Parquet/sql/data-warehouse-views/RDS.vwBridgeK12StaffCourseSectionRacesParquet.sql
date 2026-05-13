CREATE OR ALTER VIEW [RDS].[vwBridgeK12StaffCourseSectionRacesParquet] AS
	SELECT fact.BridgeK12StaffCourseSectionRaceId
	, FactK12StaffCourseSection.SchoolYearId AS FactK12StaffCourseSection_SchoolYearId
	, FactK12StaffCourseSection.SeaId AS FactK12StaffCourseSection_SeaId
	, FactK12StaffCourseSection.IeuId AS FactK12StaffCourseSection_IeuId
	, FactK12StaffCourseSection.LeaId AS FactK12StaffCourseSection_LeaId
	, FactK12StaffCourseSection.LeaInstructionId AS FactK12StaffCourseSection_LeaInstructionId
	, FactK12StaffCourseSection.K12SchoolId AS FactK12StaffCourseSection_K12SchoolId
	, FactK12StaffCourseSection.K12SchoolInstructionId AS FactK12StaffCourseSection_K12SchoolInstructionId
	, FactK12StaffCourseSection.CipCodeId AS FactK12StaffCourseSection_CipCodeId
	, FactK12StaffCourseSection.CourseApplicableEducationLevelId AS FactK12StaffCourseSection_CourseApplicableEducationLevelId
	, FactK12StaffCourseSection.K12CourseStatusId AS FactK12StaffCourseSection_K12CourseStatusId
	, FactK12StaffCourseSection.StateK12CourseId AS FactK12StaffCourseSection_StateK12CourseId
	, FactK12StaffCourseSection.LeaK12CourseId AS FactK12StaffCourseSection_LeaK12CourseId
	, FactK12StaffCourseSection.K12CourseSectionId AS FactK12StaffCourseSection_K12CourseSectionId
	, FactK12StaffCourseSection.ClassBeginningTimeId AS FactK12StaffCourseSection_ClassBeginningTimeId
	, FactK12StaffCourseSection.ClassEndingTimeId AS FactK12StaffCourseSection_ClassEndingTimeId
	, FactK12StaffCourseSection.K12EmploymentStatusId AS FactK12StaffCourseSection_K12EmploymentStatusId
	, FactK12StaffCourseSection.K12JobId AS FactK12StaffCourseSection_K12JobId
	, FactK12StaffCourseSection.K12JobPositionId AS FactK12StaffCourseSection_K12JobPositionId
	, FactK12StaffCourseSection.K12JobPositionStatusId AS FactK12StaffCourseSection_K12JobPositionStatusId
	, FactK12StaffCourseSection.K12StaffAssignmentStatusId AS FactK12StaffCourseSection_K12StaffAssignmentStatusId
	, FactK12StaffCourseSection.K12StaffAssignmentStartDateId AS FactK12StaffCourseSection_K12StaffAssignmentStartDateId
	, FactK12StaffCourseSection.K12StaffAssignmentEndDateId AS FactK12StaffCourseSection_K12StaffAssignmentEndDateId
	, FactK12StaffCourseSection.K12StaffCategoryId AS FactK12StaffCourseSection_K12StaffCategoryId
	, FactK12StaffCourseSection.K12StaffId AS FactK12StaffCourseSection_K12StaffId
	, FactK12StaffCourseSection.K12Staff_CurrentId AS FactK12StaffCourseSection_K12Staff_CurrentId
	, FactK12StaffCourseSection.K12StaffStatusId AS FactK12StaffCourseSection_K12StaffStatusId
	, FactK12StaffCourseSection.ScedCodeId AS FactK12StaffCourseSection_ScedCodeId
	, FactK12StaffCourseSection.K12StaffMemberCount AS FactK12StaffCourseSection_K12StaffMemberCount
	, FactK12StaffCourseSection.K12StudentCount AS FactK12StaffCourseSection_K12StudentCount
	, FactK12StaffCourseSection.CalendarSessionId AS FactK12StaffCourseSection_CalendarSessionId
	, FactK12StaffCourseSection.CountDateId AS FactK12StaffCourseSection_CountDateId
	, FactK12StaffCourseSection.EmployerId AS FactK12StaffCourseSection_EmployerId
	, FactK12StaffCourseSection.K12CourseSectionStatusId AS FactK12StaffCourseSection_K12CourseSectionStatusId
	, FactK12StaffCourseSection.InstructionLanguageId AS FactK12StaffCourseSection_InstructionLanguageId
	, FactK12StaffCourseSection.K12DemographicId AS FactK12StaffCourseSection_K12DemographicId
	, FactK12StaffCourseSection.DataCollectionId AS FactK12StaffCourseSection_DataCollectionId
	, FactK12StaffCourseSection.SeaJobClassificationId AS FactK12StaffCourseSection_SeaJobClassificationId
	, FactK12StaffCourseSection.LeaJobClassificationId AS FactK12StaffCourseSection_LeaJobClassificationId
	, FactK12StaffCourseSection.AvailableCarnegieUnitCredit AS FactK12StaffCourseSection_AvailableCarnegieUnitCredit
	, FactK12StaffCourseSection.InstructionalMinutes AS FactK12StaffCourseSection_InstructionalMinutes
	, FactK12StaffCourseSection.RecordStatusId AS FactK12StaffCourseSection_RecordStatusId
	, FactK12StaffCourseSection.RecordStartDateTime AS FactK12StaffCourseSection_RecordStartDateTime
	, FactK12StaffCourseSection.RecordEndDateTime AS FactK12StaffCourseSection_RecordEndDateTime
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeK12StaffCourseSectionRaces fact
JOIN RDS.FactK12StaffCourseSections FactK12StaffCourseSection
	ON fact.FactK12StaffCourseSectionId = FactK12StaffCourseSection.FactK12StaffCourseSectionId
JOIN RDS.DimRaces Race
	ON fact.RaceId = Race.DimRaceId
