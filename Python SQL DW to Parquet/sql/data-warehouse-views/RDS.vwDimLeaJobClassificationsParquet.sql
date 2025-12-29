-- View: RDS.vwDimLeaJobClassificationsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimLeaJobClassificationsParquet] AS
CREATE   VIEW RDS.vwDimLeaJobClassificationsParquet AS SELECT fact.DimLeaJobClassificationId
	, fact.LeaIdentifierSea
	, fact.CodingSystemOranizationTypeCode
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
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
FROM RDS.DimLeaJobClassifications fact
