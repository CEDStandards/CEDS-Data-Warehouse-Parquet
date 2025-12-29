-- View: RDS.vwDimSeaFinancialAccountBalancesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimSeaFinancialAccountBalancesParquet] AS
CREATE   VIEW RDS.vwDimSeaFinancialAccountBalancesParquet AS SELECT fact.DimSeaFinancialAccountBalanceId
	, fact.FinancialAccountCodingSystemOrganizationTypeCode
	, fact.FinancialAccountCodingSystemOrganizationTypeDescription
	, fact.FinancialAccountLocalBalanceSheetCodeCode
	, fact.FinancialAccountLocalBalanceSheetCodeFederalCode
	, fact.FinancialAccountLocalBalanceSheetCodeDescription
FROM RDS.DimSeaFinancialAccountBalances fact
