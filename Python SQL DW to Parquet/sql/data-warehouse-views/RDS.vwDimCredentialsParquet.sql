CREATE OR ALTER VIEW [RDS].[vwDimCredentialsParquet] AS
	SELECT fact.DimCredentialId
	, fact.CredentialDefinitionTitle
	, fact.CredentialDefinitionDescription
	, fact.CredentialDefinitionAlternateName
	, fact.CredentialDefinitionCategorySystem
	, fact.CredentialDefinitionCategoryType
	, fact.CredentialDefinitionStatusTypeCode
	, fact.CredentialDefinitionStatusTypeDescription
	, fact.CredentialDefinitionIntendedPurposeTypeCode
	, fact.CredentialDefinitionIntendedPurposeTypeDescription
	, fact.CredentialDefinitionAssessmentMethodTypeCode
	, fact.CredentialDefinitionAssessmentMethodTypeDescription
FROM RDS.DimCredentials fact
