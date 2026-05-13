CREATE OR ALTER VIEW [RDS].[vwBridgeCredentialAwardRacesParquet] AS
	SELECT fact.BridgeCredentialAwardRaceId
	, FactCredentialAward.CredentialAwardCount AS FactCredentialAward_CredentialAwardCount
	, FactCredentialAward.CredentialIssuerId AS FactCredentialAward_CredentialIssuerId
	, FactCredentialAward.CredentialDefinitionId AS FactCredentialAward_CredentialDefinitionId
	, FactCredentialAward.CredentialAwardRecipientPersonId AS FactCredentialAward_CredentialAwardRecipientPersonId
	, FactCredentialAward.CredentialAwardRecipientPerson_CurrentId AS FactCredentialAward_CredentialAwardRecipientPerson_CurrentId
	, FactCredentialAward.CredentialAwardStatusId AS FactCredentialAward_CredentialAwardStatusId
	, FactCredentialAward.SchoolYearId AS FactCredentialAward_SchoolYearId
	, FactCredentialAward.CredentialAwardId AS FactCredentialAward_CredentialAwardId
	, FactCredentialAward.AssessmentId AS FactCredentialAward_AssessmentId
	, FactCredentialAward.DataCollectionId AS FactCredentialAward_DataCollectionId
	, FactCredentialAward.K12DemographicId AS FactCredentialAward_K12DemographicId
	, FactCredentialAward.RelatedCredentialAwardId AS FactCredentialAward_RelatedCredentialAwardId
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeCredentialAwardRaces fact
JOIN RDS.FactCredentialAwards FactCredentialAward
	ON fact.FactCredentialAwardId = FactCredentialAward.FactCredentialAwardId
JOIN RDS.DimRaces Race
	ON fact.RaceId = Race.DimRaceId
