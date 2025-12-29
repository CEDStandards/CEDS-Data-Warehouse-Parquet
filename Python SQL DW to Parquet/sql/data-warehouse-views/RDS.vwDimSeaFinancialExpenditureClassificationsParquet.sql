-- View: RDS.vwDimSeaFinancialExpenditureClassificationsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimSeaFinancialExpenditureClassificationsParquet] AS
CREATE   VIEW RDS.vwDimSeaFinancialExpenditureClassificationsParquet AS SELECT fact.DimSeaFinancialExpenditureClassificationId
	, fact.FinancialAccountCodingSystemOrganizationTypeCode
	, fact.FinancialAccountCodingSystemOrganizationTypeDescription
	, fact.FinancialExpenditureLocalFunctionCodeCode
	, fact.FinancialExpenditureLocalFunctionCodeFederalCode
	, fact.FinancialExpenditureLocalFunctionCodeDescription
	, fact.FinancialExpenditureLocalObjectCodeCode
	, fact.FinancialExpenditureLocalObjectCodeFederalCode
	, fact.FinancialExpenditureLocalObjectCodeDescription
	, fact.FinancialExpenditureLocalLevelOfInstructionCodeCode
	, fact.FinancialExpenditureLocalLevelOfInstructionCodeFederalCode
	, fact.FinancialExpenditureLocalLevelOfInstructionCodeDescription
	, fact.FinancialExpenditureProjectReportingCodeCode
	, fact.FinancialExpenditureProjectReportingCodeFederalCode
	, fact.FinancialExpenditureProjectReportingCodeDescription
FROM RDS.DimSeaFinancialExpenditureClassifications fact
