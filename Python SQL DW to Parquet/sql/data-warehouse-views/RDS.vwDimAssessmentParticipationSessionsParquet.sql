-- View: RDS.vwDimAssessmentParticipationSessionsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimAssessmentParticipationSessionsParquet] AS
CREATE   VIEW RDS.vwDimAssessmentParticipationSessionsParquet AS SELECT fact.DimAssessmentParticipationSessionId
	, fact.AssessmentSessionSpecialCircumstanceTypeCode
	, fact.AssessmentSessionSpecialCircumstanceTypeDescription
	, fact.AssessmentSessionActualStartDateTime
	, fact.AssessmentSessionActualEndDateTime
FROM RDS.DimAssessmentParticipationSessions fact
