CREATE OR ALTER VIEW [RDS].[vwDimCredentialAwardsParquet] AS
	SELECT fact.DimCredentialAwardId
	, fact.ProfessionalCertificateOrLicenseNumber
	, fact.CredentialAdvancedStandingDescription
	, fact.CredentialAdvancedStandingURL
	, fact.CredentialEvidenceStatement
	, fact.CredentialRevokedReason
	, fact.CredentialAwardStartDate
	, fact.CredentialAwardEndDate
	, fact.CredentialCompletionDate
	, fact.CredentialRevokedDate
	, fact.CredentialSuspensionStartDate
	, fact.CredentialSuspensionEndDate
	, fact.CredentialAwardIdentifierState
FROM RDS.DimCredentialAwards fact
