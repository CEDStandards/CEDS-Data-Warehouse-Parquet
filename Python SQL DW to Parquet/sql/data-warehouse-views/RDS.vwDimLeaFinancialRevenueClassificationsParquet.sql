-- View: RDS.vwDimLeaFinancialRevenueClassificationsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimLeaFinancialRevenueClassificationsParquet] AS
CREATE   VIEW RDS.vwDimLeaFinancialRevenueClassificationsParquet AS SELECT fact.DimLeaFinancialRevenueClassificationId
	, fact.FinancialAccountCodingSystemOrganizationTypeCode
	, fact.FinancialAccountCodingSystemOrganizationTypeDescription
	, fact.FinancialAccountLocalRevenueCodeCode
	, fact.FinancialAccountLocalRevenueCodeSeaCode
	, fact.FinancialAccountLocalRevenueCodeDescription
	, fact.FinancialAccountLocalRevenueObjectCodeCode
	, fact.FinancialAccountLocalRevenueObjectCodeSeaCode
	, fact.FinancialAccountLocalRevenueObjectCodeDescription
	, fact.FinancialAccountRevenueObjectCodeCode
	, fact.FinancialAccountRevenueObjectCodeDescription
FROM RDS.DimLeaFinancialRevenueClassifications fact
