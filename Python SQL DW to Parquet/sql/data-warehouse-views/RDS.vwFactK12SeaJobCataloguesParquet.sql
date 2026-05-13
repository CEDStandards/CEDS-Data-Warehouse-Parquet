CREATE OR ALTER VIEW [RDS].[vwFactK12SeaJobCataloguesParquet] AS
	SELECT fact.FactK12SeaJobCatalogueId
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
	, SeaJobClassification.LocalJobCategoryDefinition AS SeaJobClassification_LocalJobCategoryDefinition
	, SeaJobClassification.K12StaffClassificationCode AS SeaJobClassification_K12StaffClassificationCode
	, SeaJobClassification.K12StaffClassificationDescription AS SeaJobClassification_K12StaffClassificationDescription
	, SeaJobClassification.TitleIProgramStaffCategoryCode AS SeaJobClassification_TitleIProgramStaffCategoryCode
	, SeaJobClassification.TitleIProgramStaffCategoryDescription AS SeaJobClassification_TitleIProgramStaffCategoryDescription
	, SeaJobClassification.MigrantEducationProgramStaffCategoryCode AS SeaJobClassification_MigrantEducationProgramStaffCategoryCode
	, SeaJobClassification.MigrantEducationProgramStaffCategoryDescription AS SeaJobClassification_MigrantEducationProgramStaffCategoryDescription
	, SeaJobClassification.SpecialEducationSupportServicesCategoryCode AS SeaJobClassification_SpecialEducationSupportServicesCategoryCode
	, SeaJobClassification.SpecialEducationSupportServicesCategoryDescription AS SeaJobClassification_SpecialEducationSupportServicesCategoryDescription
	, SeaJobClassification.EvaluationRequiredIndicatorCode AS SeaJobClassification_EvaluationRequiredIndicatorCode
	, SeaJobClassification.EvaluationRequiredIndicatorDescription AS SeaJobClassification_EvaluationRequiredIndicatorDescription
	, SeaJobClassification.RecordStartDateTime AS SeaJobClassification_RecordStartDateTime
	, SeaJobClassification.RecordEndDateTime AS SeaJobClassification_RecordEndDateTime
	, DataCollection.SourceSystemDataCollectionIdentifier AS DataCollection_SourceSystemDataCollectionIdentifier
	, DataCollection.SourceSystemName AS DataCollection_SourceSystemName
	, DataCollection.DataCollectionName AS DataCollection_DataCollectionName
	, DataCollection.DataCollectionDescription AS DataCollection_DataCollectionDescription
	, DataCollection.DataCollectionOpenDate AS DataCollection_DataCollectionOpenDate
	, DataCollection.DataCollectionCloseDate AS DataCollection_DataCollectionCloseDate
	, DataCollection.DataCollectionAcademicSchoolYear AS DataCollection_DataCollectionAcademicSchoolYear
	, DataCollection.DataCollectionSchoolYear AS DataCollection_DataCollectionSchoolYear
	, RecordStatus.RecordStatusTypeCode AS RecordStatus_RecordStatusTypeCode
	, RecordStatus.RecordStatusTypeDescription AS RecordStatus_RecordStatusTypeDescription
	, RecordStatus.RecordStatusCreatorEntityCode AS RecordStatus_RecordStatusCreatorEntityCode
	, RecordStatus.RecordStatusCreatorEntityDescription AS RecordStatus_RecordStatusCreatorEntityDescription
FROM RDS.FactK12SeaJobCatalogues fact
JOIN RDS.DimSchoolYears SchoolYear
	ON fact.SchoolYearId = SchoolYear.DimSchoolYearId
JOIN RDS.DimDates CountDate
	ON fact.CountDateId = CountDate.DimDateId
JOIN RDS.DimOnetSocOccupationTypes OnetSocOccupationType
	ON fact.OnetSocOccupationTypeId = OnetSocOccupationType.DimOnetSocOccupationTypeId
JOIN RDS.DimStandardOccupationalClassifications StandardOccupationalClassification
	ON fact.StandardOccupationalClassificationId = StandardOccupationalClassification.DimStandardOccupationalClassificationId
JOIN RDS.DimK12StaffCategories K12StaffCategory
	ON fact.K12StaffCategoryId = K12StaffCategory.DimK12StaffCategoryId
JOIN RDS.DimK12Jobs K12Job
	ON fact.K12JobId = K12Job.DimK12JobId
JOIN RDS.DimSeaJobClassifications SeaJobClassification
	ON fact.SeaJobClassificationId = SeaJobClassification.DimSeaJobClassificationId
JOIN RDS.DimDataCollections DataCollection
	ON fact.DataCollectionId = DataCollection.DimDataCollectionId
JOIN RDS.DimRecordStatuses RecordStatus
	ON fact.RecordStatusId = RecordStatus.DimRecordStatusId
