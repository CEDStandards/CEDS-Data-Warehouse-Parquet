CREATE OR ALTER VIEW [RDS].[vwFactCredentialAwardsParquet] AS
	SELECT fact.FactCredentialAwardId
	, fact.CredentialAwardCount
	, fact.CredentialIssuerId
	, fact.CredentialDefinitionId
	, fact.CredentialAwardRecipientPersonId
	, fact.CredentialAwardRecipientPerson_CurrentId
	, fact.CredentialAwardStatusId
	, fact.SchoolYearId
	, fact.CredentialAwardId
	, fact.AssessmentId
	, fact.DataCollectionId
	, fact.K12DemographicId
	, fact.RelatedCredentialAwardId
FROM RDS.FactCredentialAwards fact
