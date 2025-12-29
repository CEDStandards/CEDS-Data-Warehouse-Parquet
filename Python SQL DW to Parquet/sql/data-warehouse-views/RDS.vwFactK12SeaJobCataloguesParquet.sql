-- View: RDS.vwFactK12SeaJobCataloguesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwFactK12SeaJobCataloguesParquet] AS
CREATE   VIEW RDS.vwFactK12SeaJobCataloguesParquet AS SELECT fact.FactK12SeaJobCatalogueId
	, SchoolYear.SchoolYear AS SchoolYear_SchoolYear
	, SchoolYear.SessionBeginDate AS SchoolYear_SessionBeginDate
	, SchoolYear.SessionEndDate AS SchoolYear_SessionEndDate
	, CountDate.DateValue AS CountDate_DateValue
	, CountDate.Day AS CountDate_Day
	, CountDate.DayOfWeek AS CountDate_DayOfWeek
	, CountDate.DayOfYear AS CountDate_DayOfYear
	, CountDate.Month AS CountDate_Month
	, CountDate.MonthName AS CountDate_MonthName
	, CountDate.SubmissionYear AS CountDate_SubmissionYear
	, CountDate.Year AS CountDate_Year
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
	, OnetSocOccupationType.OnetSocOccupationTypeCode AS OnetSocOccupationType_OnetSocOccupationTypeCode
	, OnetSocOccupationType.OnetSocOccupationTypeDescription AS OnetSocOccupationType_OnetSocOccupationTypeDescription
	, StandardOccupationalClassification.StandardOccupationalClassificationCode AS StandardOccupationalClassification_StandardOccupationalClassificationCode
	, StandardOccupationalClassification.StandardOccupationalClassificationDescription AS StandardOccupationalClassification_StandardOccupationalClassificationDescription
	, K12StaffCategory.K12StaffClassificationCode AS K12StaffCategory_K12StaffClassificationCode
	, K12StaffCategory.K12StaffClassificationDescription AS K12StaffCategory_K12StaffClassificationDescription
	, K12StaffCategory.K12StaffClassificationEdFactsCode AS K12StaffCategory_K12StaffClassificationEdFactsCode
	, K12StaffCategory.SpecialEducationSupportServicesCategoryCode AS K12StaffCategory_SpecialEducationSupportServicesCategoryCode
	, K12StaffCategory.SpecialEducationSupportServicesCategoryDescription AS K12StaffCategory_SpecialEducationSupportServicesCategoryDescription
	, K12StaffCategory.SpecialEducationSupportServicesCategoryEdFactsCode AS K12StaffCategory_SpecialEducationSupportServicesCategoryEdFactsCode
	, K12StaffCategory.TitleIProgramStaffCategoryCode AS K12StaffCategory_TitleIProgramStaffCategoryCode
	, K12StaffCategory.TitleIProgramStaffCategoryDescription AS K12StaffCategory_TitleIProgramStaffCategoryDescription
	, K12StaffCategory.TitleIProgramStaffCategoryEdFactsCode AS K12StaffCategory_TitleIProgramStaffCategoryEdFactsCode
	, K12StaffCategory.MigrantEducationProgramStaffCategoryCode AS K12StaffCategory_MigrantEducationProgramStaffCategoryCode
	, K12StaffCategory.MigrantEducationProgramStaffCategoryDescription AS K12StaffCategory_MigrantEducationProgramStaffCategoryDescription
	, K12StaffCategory.ProfessionalEducationalJobClassificationCode AS K12StaffCategory_ProfessionalEducationalJobClassificationCode
	, K12StaffCategory.ProfessionalEducationalJobClassificationDescription AS K12StaffCategory_ProfessionalEducationalJobClassificationDescription
	, K12Job.JobIdentifierLea AS K12Job_JobIdentifierLea
	, K12Job.JobIdentifierSchool AS K12Job_JobIdentifierSchool
	, K12Job.JobIdentifierSea AS K12Job_JobIdentifierSea
	, K12Job.JobTitle AS K12Job_JobTitle
	, SeaJobClassification.CodingSystemOrganizationTypeCode AS SeaJobClassification_CodingSystemOrganizationTypeCode
	, SeaJobClassification.CodingSystemOrganizationTypeDescription AS SeaJobClassification_CodingSystemOrganizationTypeDescription
	, SeaJobClassification.EducationJobTypeCode AS SeaJobClassification_EducationJobTypeCode
	, SeaJobClassification.EducationJobTypeDescription AS SeaJobClassification_EducationJobTypeDescription
	, SeaJobClassification.LocalJobFunctionCode AS SeaJobClassification_LocalJobFunctionCode
	, SeaJobClassification.LocalJobFunctionDescription AS SeaJobClassification_LocalJobFunctionDescription
	, SeaJobClassification.LocalJobFunctionDefinition AS SeaJobClassification_LocalJobFunctionDefinition
	, SeaJobClassification.LocalJobCategoryCode AS SeaJobClassification_LocalJobCategoryCode
	, SeaJobClassification.LocalJobCategoryDescription AS SeaJobClassification_LocalJobCategoryDescription
	, SeaJobClassification.LocalJobC