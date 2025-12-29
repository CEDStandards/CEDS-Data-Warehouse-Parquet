-- View: RDS.vwDimAssessmentAdministrationsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimAssessmentAdministrationsParquet] AS
CREATE   VIEW RDS.vwDimAssessmentAdministrationsParquet AS SELECT fact.DimAssessmentAdministrationId
	, fact.AssessmentIdentifier
	, fact.AssessmentIdentificationSystem
	, fact.AssessmentAdministrationCode
	, fact.AssessmentAdministrationName
	, fact.AssessmentAdministrationStartDate
	, fact.AssessmentAdministrationFinishDate
	, fact.AssessmentAdministrationAssessmentFamily
	, fact.SchoolIdentifier
	, fact.SchoolIdentificationSystem
	, fact.LocalEducationAgencyIdentifier
	, fact.LeaIdentificationSystem
	, fact.AssessmentAdministrationOrganizationName
	, fact.AssessmentAdministrationPeriodDescription
	, fact.AssessmentSecureIndicator
FROM RDS.DimAssessmentAdministrations fact
