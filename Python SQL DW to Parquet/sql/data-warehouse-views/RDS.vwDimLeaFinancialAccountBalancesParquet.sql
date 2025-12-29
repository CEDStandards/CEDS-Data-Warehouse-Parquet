-- View: RDS.vwDimLeaFinancialAccountBalancesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimLeaFinancialAccountBalancesParquet] AS
CREATE   VIEW RDS.vwDimLeaFinancialAccountBalancesParquet AS SELECT fact.DimLeaFinancialAccountBalanceId
	, fact.FinancialAccountCodingSystemOrganizationTypeCode
	, fact.FinancialAccountCodingSystemOrganizationTypeDescription
	, fact.FinancialAccountLocalBalanceSheetCodeCode
	, fact.FinancialAccountLocalBalanceSheetCodeSeaCode
	, fact.FinancialAccountLocalBalanceSheetCodeDescription
FROM RDS.DimLeaFinancialAccountBalances fact
