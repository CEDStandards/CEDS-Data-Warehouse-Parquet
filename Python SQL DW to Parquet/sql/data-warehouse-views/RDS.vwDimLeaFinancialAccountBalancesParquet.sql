CREATE OR ALTER VIEW [RDS].[vwDimLeaFinancialAccountBalancesParquet] AS
	SELECT fact.DimLeaFinancialAccountBalanceId
	, fact.FinancialAccountCodingSystemOrganizationTypeCode
	, fact.FinancialAccountCodingSystemOrganizationTypeDescription
	, fact.FinancialAccountLocalBalanceSheetCodeCode
	, fact.FinancialAccountLocalBalanceSheetCodeSeaCode
	, fact.FinancialAccountLocalBalanceSheetCodeDescription
FROM RDS.DimLeaFinancialAccountBalances fact
