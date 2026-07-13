CREATE OR ALTER VIEW [RDS].[vwDimAssessmentParticipationSessionsParquet] AS
	SELECT fact.DimAssessmentParticipationSessionId
	, fact.AssessmentSessionSpecialCircumstanceTypeCode
	, fact.AssessmentSessionSpecialCircumstanceTypeDescription
	, fact.AssessmentSessionActualStartDateTime
	, fact.AssessmentSessionActualEndDateTime
FROM RDS.DimAssessmentParticipationSessions fact
