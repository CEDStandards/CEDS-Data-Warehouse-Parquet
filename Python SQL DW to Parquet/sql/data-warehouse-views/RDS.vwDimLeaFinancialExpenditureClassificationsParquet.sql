CREATE OR ALTER VIEW [RDS].[vwDimLeaFinancialExpenditureClassificationsParquet] AS
	SELECT fact.DimLeaFinancialExpenditureClassificationId
	, fact.FinancialAccountCodingSystemOrganizationTypeCode
	, fact.FinancialAccountCodingSystemOrganizationTypeDescription
	, fact.FinancialExpenditureLocalFunctionCodeCode
	, fact.FinancialExpenditureLocalFunctionCodeSeaCode
	, fact.FinancialExpenditureLocalFunctionCodeDescription
	, fact.FinancialExpenditureLocalObjectCodeCode
	, fact.FinancialExpenditureLocalObjectCodeSeaCode
	, fact.FinancialExpenditureLocalObjectCodeDescription
	, fact.FinancialExpenditureLocalLevelOfInstructionCodeCode
	, fact.FinancialExpenditureLocalLevelOfInstructionCodeSeaCode
	, fact.FinancialExpenditureLocalLevelOfInstructionCodeDescription
	, fact.FinancialExpenditureProjectReportingCodeCode
	, fact.FinancialExpenditureProjectReportingCodeSeaCode
	, fact.FinancialExpenditureProjectReportingCodeDescription
FROM RDS.DimLeaFinancialExpenditureClassifications fact
