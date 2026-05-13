CREATE OR ALTER VIEW [RDS].[vwFactK12FinancialAccountBalancesParquet] AS
	SELECT fact.FactK12FinancialAccountBalanceId
	, fact.SeaId
	, fact.IeuId
	, fact.LeaId
	, fact.K12SchoolId
	, fact.FinancialAccountingDateId
	, fact.FiscalYearId
	, fact.FederalFinancialAccountBalanceId
	, fact.SeaFinancialAccountBalanceId
	, fact.LeaFinancialAccountBalanceId
	, fact.FederalFinancialAccountClassificationId
	, fact.SeaFinancialAccountClassificationId
	, fact.LeaFinancialAccountClassificationId
	, fact.FederalFinancialAccountId
	, fact.SeaFinancialAccountId
	, fact.LeaFinancialAccountId
	, fact.FederalProgramCodeId
	, fact.FinancialAccountingValue
FROM RDS.FactK12FinancialAccountBalances fact
