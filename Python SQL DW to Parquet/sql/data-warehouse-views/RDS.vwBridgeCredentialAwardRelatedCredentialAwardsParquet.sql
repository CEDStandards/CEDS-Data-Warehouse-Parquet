-- View: RDS.vwBridgeCredentialAwardRelatedCredentialAwardsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeCredentialAwardRelatedCredentialAwardsParquet] AS
CREATE   VIEW RDS.vwBridgeCredentialAwardRelatedCredentialAwardsParquet AS SELECT fact.BridgeCredentialAwardRelatedCredentialAwardId
	, FactCredentialAward.CredentialAwardCount AS FactCredentialAward_CredentialAwardCount
	, RelatedFactCredentialAward.CredentialAwardCount AS RelatedFactCredentialAward_CredentialAwardCount
	, fact.CredentialAwardRelationshipCode
	, fact.CredentialAwardRelationshipDescription
FROM RDS.BridgeCredentialAwardRelatedCredentialAwards fact
JOIN RDS.FactCredentialAwards FactCredentialAward
	ON Fact.FactCredentialAwardId = FactCredentialAward.FactCredentialAwardId
JOIN RDS.FactCredentialAwards RelatedFactCredentialAward
	ON Fact.RelatedFactCredentialAwardId = RelatedFactCredentialAward.FactCredentialAwardId
