CREATE OR ALTER VIEW [RDS].[vwDimAssessmentSubtestsParquet] AS
	SELECT fact.DimAssessmentSubtestId
	, fact.AssessmentFormNumber
	, fact.AssessmentAcademicSubjectCode
	, fact.AssessmentAcademicSubjectDescription
	, fact.AssessmentSubtestIdentifierInternal
	, fact.AssessmentSubtestTitle
	, fact.AssessmentSubtestAbbreviation
	, fact.AssessmentSubtestDescription
	, fact.AssessmentSubtestVersion
	, fact.AssessmentLevelForWhichDesigned
	, fact.AssessmentEarlyLearningDevelopmentalDomain
	, fact.AssessmentSubtestPublishedDate
	, fact.AssessmentSubtestMinimumValue
	, fact.AssessmentSubtestMaximumValue
	, fact.AssessmentSubtestScaleOptimalValue
	, fact.AssessmentContentStandardType
	, fact.AssessmentPurpose
	, fact.AssessmentSubtestRules
	, fact.AssessmentFormSubtestTier
	, fact.AssessmentFormSubtestContainerOnly
FROM RDS.DimAssessmentSubtests fact
