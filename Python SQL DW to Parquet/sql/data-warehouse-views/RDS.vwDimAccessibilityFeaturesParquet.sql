-- View: RDS.vwDimAccessibilityFeaturesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimAccessibilityFeaturesParquet] AS
CREATE   VIEW RDS.vwDimAccessibilityFeaturesParquet AS SELECT fact.DimAccessibilityFeatureId
	, fact.AccessibilityFeatureTypeCode
	, fact.AccessibilityFeatureTypeDescription
	, fact.AccessibilityFeatureApplicationTypeCode
	, fact.AccessibilityFeatureApplicationTypeDescription
	, fact.AccessibilityFeatureCategoryCode
	, fact.AccessibilityFeatureCategoryDescription
	, fact.AccessibilityFeatureDeliveryMethodCode
	, fact.AccessibilityFeatureDeliveryMethodDescription
	, fact.AccessibilityFeatureEmbeddedIndicatorCode
	, fact.AccessibilityFeatureEmbeddedIndicatorDescription
	, fact.AccessibilityFeaturePausesTheClockIndicatorCode
	, fact.AccessibilityFeaturePausesTheClockIndicatorDescription
FROM RDS.DimAccessibilityFeatures fact
