-- View: RDS.vwDimProfessionalDevelopmentActivitiesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimProfessionalDevelopmentActivitiesParquet] AS
CREATE   VIEW RDS.vwDimProfessionalDevelopmentActivitiesParquet AS SELECT fact.DimProfessionalDevelopmentActivityId
	, fact.ProfessionalDevelopmentActivityIdentifier
	, fact.ProfessionalDevelopmentActivityTitle
	, fact.SponsoringAgencyName
	, fact.ProfessionalDevelopmentActivityTypeCode
	, fact.ProfessionalDevelopmentActivityTypeDescription
	, fact.ProfessionalDevelopmentActivityDescription
	, fact.ProfessionalDevelopmentActivityEducationLevelsAddressedCode
	, fact.ProfessionalDevelopmentActivityEducationLevelsAddressedDescription
	, fact.ProfessionalDevelopmentActivityObjective
	, fact.ProfessionalDevelopmentActivityLevelCode
	, fact.ProfessionalDevelopmentActivityLevelDescription
	, fact.ProfessionalDevelopmentActivityCreditTypeCode
	, fact.ProfessionalDevelopmentActivityCreditTypeDescription
	, fact.ProfessionalDevelopmentActivityTargetAudienceCode
	, fact.ProfessionalDevelopmentActivityTargetAudienceDescription
	, fact.ProfessionalDevelopmentSessionLanguageCode
	, fact.ProfessionalDevelopmentSessionLanguageDescription
	, fact.ProfessionalDevelopmentActivityExpirationDate
	, fact.ProfessionalDevelopmentActivityApprovedPurposeCode
	, fact.ProfessionalDevelopmentActivityApprovedPurposeDescription
	, fact.ProfessionalDevelopmentActivityApprovalCode
	, fact.ProfessionalDevelopmentActivityCode
	, fact.ProfessionalDevelopmentActivityCost
	, fact.ProfessionalDevelopmentApprovalStartDate
	, fact.ProfessionalDevelopmentApprovalEndDate
FROM RDS.DimProfessionalDevelopmentActivities fact
