CREATE OR ALTER VIEW [RDS].[vwFactK12FinancialAccountBudgetsParquet] AS
	SELECT fact.FactK12FinancialAccountBudgetId
	, fact.SeaId
	, fact.IeuId
	, fact.LeaId
	, fact.K12SchoolId
	, fact.FinancialAccountingDateId
	, fact.FiscalYearId
	, fact.FiscalPeriodId
	, fact.FederalFinancialAccountBalanceId
	, fact.SeaFinancialAccountBalanceId
	, fact.LeaFinancialAccountBalanceId
	, fact.FederalFinancialAccountClassificationId
	, fact.SeaFinancialAccountClassificationId
	, fact.LeaFinancialAccountClassificationId
	, fact.FederalFinancialAccountId
	, fact.SeaFinancialAccountId
	, fact.LeaFinancialAccountId
	, fact.FederalFinancialExpenditureClassificationId
	, fact.SeaFinancialExpenditureClassificationId
	, fact.LeaFinancialExpenditureClassificationId
	, fact.FederalFinancialRevenueClassificationId
	, fact.SeaFinancialRevenueClassificationId
	, fact.LeaFinancialRevenueClassificationId
	, fact.FederalProgramCodeId
	, fact.FinancialAccountingPeriodBudgetedValue
	, fact.FinancialAccountingPeriodEncumberedValue
	, fact.FinancialAccountingPeriodActualValue
FROM RDS.FactK12FinancialAccountBudgets fact
