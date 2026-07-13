CREATE OR ALTER VIEW [RDS].[vwDimFinancialAccountsParquet] AS
	SELECT fact.DimFinancialAccountId
	, fact.FinancialAccountNumber
	, fact.FinancialAccountName
	, fact.FinancialAccountDescription
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimFinancialAccounts fact
