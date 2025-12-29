-- View: RDS.vwDimSeaJobClassificationsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimSeaJobClassificationsParquet] AS
CREATE   VIEW RDS.vwDimSeaJobClassificationsParquet AS SELECT fact.DimSeaJobClassificationId
	, fact.CodingSystemOrganizationTypeCode
	, fact.CodingSystemOrganizationTypeDescription
	, fact.EducationJobTypeCode
	, fact.EducationJobTypeDescription
	, fact.LocalJobFunctionCode
	, fact.LocalJobFunctionDescription
	, fact.LocalJobFunctionDefinition
	, fact.LocalJobCategoryCode
	, fact.LocalJobCategoryDescription
	, fact.LocalJobCategoryDefinition
	, fact.K12StaffClassificationCode
	, fact.K12StaffClassificationDescription
	, fact.TitleIProgramStaffCategoryCode
	, fact.TitleIProgramStaffCategoryDescription
	, fact.MigrantEducationProgramStaffCategoryCode
	, fact.MigrantEducationProgramStaffCategoryDescription
	, fact.SpecialEducationSupportServicesCategoryCode
	, fact.SpecialEducationSupportServicesCategoryDescription
	, fact.EvaluationRequiredIndicatorCode
	, fact.EvaluationRequiredIndicatorDescription
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimSeaJobClassifications fact
