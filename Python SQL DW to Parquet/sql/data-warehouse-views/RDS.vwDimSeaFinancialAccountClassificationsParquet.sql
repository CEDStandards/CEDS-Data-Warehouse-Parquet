-- View: RDS.vwDimSeaFinancialAccountClassificationsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimSeaFinancialAccountClassificationsParquet] AS
CREATE   VIEW RDS.vwDimSeaFinancialAccountClassificationsParquet AS SELECT fact.DimSeaFinancialAccountClassificationId
	, fact.FinancialAccountCodingSystemOrganizationTypeCode
	, fact.FinancialAccountCodingSystemOrganizationTypeDescription
	, fact.FinancialAccountCategoryCode
	, fact.FinancialAccountCategoryFederalCode
	, fact.FinancialAccountCategoryDescription
	, fact.FinancialAccountLocalProgramCodeCode
	, fact.FinancialAccountLocalProgramCodeFederalCode
	, fact.FinancialAccountLocalProgramCodeDescription
	, fact.FinancialAccountLocalFundClassificationCode
	, fact.FinancialAccountLocalFundClassificationFederalCode
	, fact.FinancialAccountLocalFundClassificationDescription
FROM RDS.DimSeaFinancialAccountClassifications fact
