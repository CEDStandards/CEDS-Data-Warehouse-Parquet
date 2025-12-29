-- View: RDS.vwDimCredentialDefinitionsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimCredentialDefinitionsParquet] AS
CREATE   VIEW RDS.vwDimCredentialDefinitionsParquet AS SELECT fact.DimCredentialDefinitionId
	, fact.CredentialDefinitionIdentifierCtid
	, fact.CredentialDefinitionIdentifierUri
	, fact.CredentialDefinitionIdentifierUrl
	, fact.CredentialDefinitionIdentifierUrn
	, fact.CredentialDefinitionIdentifierUuid
	, fact.CredentialDefinitionIdentifierArk
	, fact.CredentialDefinitionIdentifierDoi
	, fact.CredentialDefinitionIdentifierInfo
	, fact.CredentialDefinitionTitle
	, fact.CredentialDefinitionDescription
	, fact.CredentialTypeCode
	, fact.CredentialTypeDescription
	, fact.CredentialDefinitionCategorySystem
	, fact.CredentialDefinitionCategoryType
	, fact.CredentialDefinitionStatusTypeCode
	, fact.CredentialDefinitionStatusTypeDescription
	, fact.CredentialDefinitionIntendedPurposeTypeCode
	, fact.CredentialDefinitionIntendedPurposeTypeDescription
	, fact.CredentialDefinitionAssessmentMethodTypeCode
	, fact.CredentialDefinitionAssessmentMethodTypeDescription
	, fact.CredentialDefinitionCriteria
	, fact.CredentialDefinitionCriteriaURL
	, fact.CredentialDefinitionKeywords
	, fact.CredentialDefinitionValidationMethodDescription
	, fact.CredentialImageURL
	, fact.CredentialDefinitionDateEffective
	, fact.CredentialOfferedStartDate
	, fact.CredentialOfferedEndDate
	, fact.CoreAcademicCourseCode
	, fact.CoreAcademicCourseDescription
	, fact.CTDLAudienceLevelTypeCode
	, fact.CTDLAudienceLevelTypeDescription
	, fact.CredentialDefinitionTerminalDegreeIndicatorCode
	, fact.CredentialDefinitionTerminalDegreeIndicatorDescription
	, fact.CredentialDefinitionScedCode
	, fact.CredentialDefinitionLowGradeLevelCode
	, fact.CredentialDefinitionHighGradeLevelCode
	, fact.TeachingCredentialTypeCode
	, fact.TeachingCredentialTypeDescription
FROM RDS.DimCredentialDefinitions fact
