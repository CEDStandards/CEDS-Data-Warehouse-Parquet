CREATE OR ALTER VIEW [RDS].[vwBridgeCredentialAwardRelatedCredentialAwardsParquet] AS
	SELECT fact.BridgeCredentialAwardRelatedCredentialAwardId
	, fact.FactCredentialAwardId
	, fact.RelatedFactCredentialAwardId
	, fact.CredentialAwardRelationshipCode
	, fact.CredentialAwardRelationshipDescription
FROM RDS.BridgeCredentialAwardRelatedCredentialAwards fact
