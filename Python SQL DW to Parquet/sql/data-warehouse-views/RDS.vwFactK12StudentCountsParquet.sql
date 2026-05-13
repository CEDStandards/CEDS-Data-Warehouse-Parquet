CREATE OR ALTER VIEW [RDS].[vwFactK12StudentCountsParquet] AS
	SELECT fact.FactK12StudentCountId
	, fact.SchoolYearId
	, fact.FactTypeId
	, fact.SeaId
	, fact.IeuId
	, fact.LeaId
	, fact.K12SchoolId
	, fact.K12StudentId
	, fact.K12Student_CurrentId
	, fact.AgeId
	, fact.AttendanceId
	, fact.CohortStatusId
	, fact.CteStatusId
	, fact.DisabilityStatusId
	, fact.EnglishLearnerStatusId
	, fact.GradeLevelId
	, fact.HomelessnessStatusId
	, fact.EconomicallyDisadvantagedStatusId
	, fact.FosterCareStatusId
	, fact.IdeaStatusId
	, fact.ImmigrantStatusId
	, fact.K12DemographicId
	, fact.K12EnrollmentStatusId
	, fact.K12AcademicAwardStatusId
	, fact.LanguageId
	, fact.MigrantStatusId
	, fact.NOrDStatusId
	, fact.PrimaryDisabilityTypeId
	, fact.RaceId
	, fact.SpecialEducationServicesExitDateId
	, fact.MigrantStudentQualifyingArrivalDateId
	, fact.LastQualifyingMoveDateId
	, fact.TitleIStatusId
	, fact.TitleIIIStatusId
	, fact.StatusStartDateEnglishLearnerId
	, fact.StatusEndDateEnglishLearnerId
	, fact.StudentCount
	, fact.StatusStartDateNeglectedOrDelinquentId
	, fact.StatusEndDateNeglectedOrDelinquentId
	, fact.CohortYearId
	, fact.CohortGraduationYearId
	, fact.EnrollmentEntryDateId
	, fact.EnrollmentExitDateId
FROM RDS.FactK12StudentCounts fact
