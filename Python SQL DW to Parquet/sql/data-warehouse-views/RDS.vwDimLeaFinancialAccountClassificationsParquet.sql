-- View: RDS.vwDimLeaFinancialAccountClassificationsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimLeaFinancialAccountClassificationsParquet] AS
CREATE   VIEW RDS.vwDimLeaFinancialAccountClassificationsParquet AS SELECT fact.DimLeaFinancialAccountClassificationId
	, fact.FinancialAccountCodingSystemOrganizationTypeCode
	, fact.FinancialAccountCodingSystemOrganizationTypeDescription
	, fact.FinancialAccountCategoryCode
	, fact.FinancialAccountCategorySeaCode
	, fact.FinancialAccountCategoryDescription
	, fact.FinancialAccountLocalProgramCodeCode
	, fact.FinancialAccountLocalProgramCodeSeaCode
	, fact.FinancialAccountLocalProgramCodeDescription
	, fact.FinancialAccountLocalFundClassificationCode
	, fact.FinancialAccountLocalFundClassificationSeaCode
	, fact.FinancialAccountLocalFundClassificationDescription
FROM RDS.DimLeaFinancialAccountClassifications fact
