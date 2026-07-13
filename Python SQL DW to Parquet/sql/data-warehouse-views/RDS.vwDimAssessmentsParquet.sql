CREATE OR ALTER VIEW [RDS].[vwDimAssessmentsParquet] AS
	SELECT fact.DimAssessmentId
	, fact.AssessmentIdentifierState
	, fact.AssessmentFamilyShortName
	, fact.AssessmentTitle
	, fact.AssessmentShortName
	, fact.AssessmentTypeCode
	, fact.AssessmentTypeDescription
	, fact.AssessmentTypeEdFactsCode
	, fact.AssessmentAcademicSubjectCode
	, fact.AssessmentAcademicSubjectDescription
	, fact.AssessmentAcademicSubjectEdFactsCode
	, fact.AssessmentTypeAdministeredCode
	, fact.AssessmentTypeAdministeredDescription
	, fact.AssessmentTypeAdministeredEdFactsCode
	, fact.AssessmentTypeAdministeredToEnglishLearnersCode
	, fact.AssessmentTypeAdministeredToEnglishLearnersDescription
	, fact.AssessmentTypeAdministeredToEnglishLearnersEdFactsCode
FROM RDS.DimAssessments fact
