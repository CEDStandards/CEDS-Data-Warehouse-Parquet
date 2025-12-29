-- View: RDS.vwFactK12GraduationCohortsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwFactK12GraduationCohortsParquet] AS
CREATE   VIEW RDS.vwFactK12GraduationCohortsParquet AS SELECT fact.FactK12GraduationCohortId
	, SchoolYear.SchoolYear AS SchoolYear_SchoolYear
	, SchoolYear.SessionBeginDate AS SchoolYear_SessionBeginDate
	, SchoolYear.SessionEndDate AS SchoolYear_SessionEndDate
	, CohortYear.SchoolYear AS CohortYear_SchoolYear
	, CohortYear.SessionBeginDate AS CohortYear_SessionBeginDate
	, CohortYear.SessionEndDate AS CohortYear_SessionEndDate
	, CohortGraduationYear.SchoolYear AS CohortGraduationYear_SchoolYear
	, CohortGraduationYear.SessionBeginDate AS CohortGraduationYear_SessionBeginDate
	, CohortGraduationYear.SessionEndDate AS CohortGraduationYear_SessionEndDate
	, DiplomaOrCredentialAwardDate.DateValue AS DiplomaOrCredentialAwardDate_DateValue
	, DiplomaOrCredentialAwardDate.Day AS DiplomaOrCredentialAwardDate_Day
	, DiplomaOrCredentialAwardDate.DayOfWeek AS DiplomaOrCredentialAwardDate_DayOfWeek
	, DiplomaOrCredentialAwardDate.DayOfYear AS DiplomaOrCredentialAwardDate_DayOfYear
	, DiplomaOrCredentialAwardDate.Month AS DiplomaOrCredentialAwardDate_Month
	, DiplomaOrCredentialAwardDate.MonthName AS DiplomaOrCredentialAwardDate_MonthName
	, DiplomaOrCredentialAwardDate.SubmissionYear AS DiplomaOrCredentialAwardDate_SubmissionYear
	, DiplomaOrCredentialAwardDate.Year AS DiplomaOrCredentialAwardDate_Year
	, CohortExclusion.CohortExclusionCode AS CohortExclusion_CohortExclusionCode
	, CohortExclusion.CohortExclusionDescription AS CohortExclusion_CohortExclusionDescription
	, K12AcademicAwardStatus.HighSchoolDiplomaTypeCode AS K12AcademicAwardStatus_HighSchoolDiplomaTypeCode
	, K12AcademicAwardStatus.HighSchoolDiplomaTypeDescription AS K12AcademicAwardStatus_HighSchoolDiplomaTypeDescription
	, K12AcademicAwardStatus.HighSchoolDiplomaTypeEdFactsCode AS K12AcademicAwardStatus_HighSchoolDiplomaTypeEdFactsCode
	, K12AcademicAwardStatus.HighSchoolDiplomaDistinctionTypeCode AS K12AcademicAwardStatus_HighSchoolDiplomaDistinctionTypeCode
	, K12AcademicAwardStatus.HighSchoolDiplomaDistinctionTypeDescription AS K12AcademicAwardStatus_HighSchoolDiplomaDistinctionTypeDescription
	, K12AcademicAwardStatus.ProjectedHighSchoolDiplomaTypeCode AS K12AcademicAwardStatus_ProjectedHighSchoolDiplomaTypeCode
	, K12AcademicAwardStatus.ProjectedHighSchoolDiplomaTypeDescription AS K12AcademicAwardStatus_ProjectedHighSchoolDiplomaTypeDescription
	, Sea.SeaOrganizationName AS Sea_SeaOrganizationName
	, Sea.SeaOrganizationIdentifierSea AS Sea_SeaOrganizationIdentifierSea
	, Sea.StateAnsiCode AS Sea_StateAnsiCode
	, Sea.StateAbbreviationCode AS Sea_StateAbbreviationCode
	, Sea.StateAbbreviationDescription AS Sea_StateAbbreviationDescription
	, Sea.MailingAddressCity AS Sea_MailingAddressCity
	, Sea.MailingAddressPostalCode AS Sea_MailingAddressPostalCode
	, Sea.MailingAddressStateAbbreviation AS Sea_MailingAddressStateAbbreviation
	, Sea.MailingAddressStreetNumberAndName AS Sea_MailingAddressStreetNumberAndName
	, Sea.PhysicalAddressCity AS Sea_PhysicalAddressCity
	, Sea.PhysicalAddressPostalCode AS Sea_PhysicalAddressPostalCode
	, Sea.PhysicalAddressStateAbbreviation AS Sea_PhysicalAddressStateAbbreviation
	, Sea.PhysicalAddressStreetNumberAndName AS Sea_PhysicalAddressStreetNumberAndName
	, Sea.TelephoneNumber AS Sea_TelephoneNumber
	, Sea.WebSiteAddress AS Sea_WebSiteAddress
	, Sea.RecordStartDateTime AS Sea_RecordStartDateTime
	, Sea.RecordEndDateTime AS Sea_RecordEndDateTime
	, Sea.MailingAddressApartmentRoomOrSuiteNumber AS Sea_MailingAddressApartmentRoomOrSuiteNumber
	, Sea.PhysicalAddressApartmentRoomOrSuiteNumber AS Sea_PhysicalAddressApartmentRoomOrSuiteNumber
	, Sea.MailingAddressCountyAnsiCodeCode AS Sea_MailingAddressCountyAnsiCodeCode
	, Sea.PhysicalAddressCountyAnsiCodeCode AS Sea_PhysicalAddressCountyAnsiCodeCode
	, Ieu.IeuOrganizationName AS Ieu_IeuOrganizationName
	, Ieu.IeuOrganizationIdentifierSea AS Ieu_IeuOrganizationIdentifierSea
	, Ieu.SeaOrganizationName AS Ieu_SeaOrganizationName
	, Ieu.SeaOr