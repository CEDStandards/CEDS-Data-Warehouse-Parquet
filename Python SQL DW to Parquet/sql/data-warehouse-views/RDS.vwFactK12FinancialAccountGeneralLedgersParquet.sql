CREATE OR ALTER VIEW [RDS].[vwFactK12FinancialAccountGeneralLedgersParquet] AS
	SELECT fact.FactK12FinancialAccountGeneralLedgerId
	, fact.SeaId
	, fact.IeuId
	, fact.LeaId
	, fact.K12SchoolId
	, fact.FinancialAccountingDateId
	, fact.FiscalYearId
	, fact.FederalFinancialAccountId
	, fact.SeaFinancialAccountId
	, fact.LeaFinancialAccountId
	, fact.FederalFinancialAccountClassificationId
	, fact.SeaFinancialAccountClassificationId
	, fact.LeaFinancialAccountClassificationId
	, fact.FederalFinancialExpenditureClassificationId
	, fact.SeaFinancialExpenditureClassificationId
	, fact.LeaFinancialExpenditureClassificationId
	, fact.FederalFinancialRevenueClassificationId
	, fact.SeaFinancialRevenueClassificationId
	, fact.LeaFinancialRevenueClassificationId
	, fact.FederalProgramCodeId
	, fact.FinancialAccountingValue
FROM RDS.FactK12FinancialAccountGeneralLedgers fact
