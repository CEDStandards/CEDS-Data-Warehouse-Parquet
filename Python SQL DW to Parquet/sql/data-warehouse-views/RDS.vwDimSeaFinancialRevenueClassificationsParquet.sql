-- View: RDS.vwDimSeaFinancialRevenueClassificationsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimSeaFinancialRevenueClassificationsParquet] AS
CREATE   VIEW RDS.vwDimSeaFinancialRevenueClassificationsParquet AS SELECT fact.DimSeaFinancialRevenueClassificationId
	, fact.FinancialAccountCodingSystemOrganizationTypeCode
	, fact.FinancialAccountCodingSystemOrganizationTypeDescription
	, fact.FinancialAccountLocalRevenueCodeCode
	, fact.FinancialAccountLocalRevenueCodeFederalCode
	, fact.FinancialAccountLocalRevenueCodeDescription
	, fact.FinancialAccountLocalRevenueObjectCodeCode
	, fact.FinancialAccountLocalRevenueObjectCodeSeaCode
	, fact.FinancialAccountLocalRevenueObjectCodeDescription
FROM RDS.DimSeaFinancialRevenueClassifications fact
