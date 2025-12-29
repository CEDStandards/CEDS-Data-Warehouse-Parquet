-- View: RDS.vwFactK12StudentEconomicDisadvantagesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwFactK12StudentEconomicDisadvantagesParquet] AS
CREATE   VIEW RDS.vwFactK12StudentEconomicDisadvantagesParquet AS SELECT fact.FactK12StudentEconomicDisadvantageId
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
	, DataCollection.SourceSystemDataCollectionIdentifier AS DataCollection_SourceSystemDataCollectionIdentifier
	, DataCollection.SourceSystemName AS DataCollection_SourceSystemName
	, DataCollection.DataCollectionName AS DataCollection_DataCollectionName
	, DataCollection.DataCollectionDescription AS DataCollection_DataCollectionDescription
	, DataCollection.DataCollectionOpenDate AS DataCollection_DataCollectionOpenDate
	, DataCollection.DataCollectionCloseDate AS DataCollection_DataCollectionCloseDate
	, DataCollection.DataCollectionAcademicSchoolYear AS DataCollection_DataCollectionAcademicSchoolYear
	, DataCollection.DataCollectionSchoolYear AS DataCollection_DataCollectionSchoolYear
	, NcesSideVintageBeginYearDate.DateValue AS NcesSideVintageBeginYearDate_DateValue
	, NcesSideVintageBeginYearDate.Day AS NcesSideVintageBeginYearDate_Day
	, NcesSideVintageBeginYearDate.DayOfWeek AS NcesSideVintageBeginYearDate_DayOfWeek
	, NcesSideVintageBeginYearDate.DayOfYear AS NcesSideVintageBeginYearDate_DayOfYear
	, NcesSideVintageBeginYearDate.Month AS NcesSideVintageBeginYearDate_Month
	, NcesSideVintageBeginYearDate.MonthName AS NcesSideVintageBeginYearDate_MonthName
	, NcesSideVintageBeginYearDate.SubmissionYear AS NcesSideVintageBeginYearDate_SubmissionYear
	, NcesSideVintageBeginYearDate.Year AS NcesSideVintageBeginYearDate_Year
	, NcesSideVintageEndYearDate.DateValue AS NcesSideVintageEndYearDate_DateValue
	, NcesSideVintageEndYearDate.Day AS NcesSideVintageEndYearDate_Day
	, NcesSideVintageEndYearDate.DayOfWeek AS NcesSideVintageEndYearDate_DayOfWeek
	, NcesSideVintageEndYearDate.DayOfYear AS NcesSideVintageEndYearDate_DayOfYear
	, NcesSideVintageEndYearDate.Month AS NcesSideVintageEndYearDate_Month
	, NcesSideVintageEndYearDate.MonthName AS NcesSideVintageEndYearDate_MonthName
	, NcesSideVintageEndYearDate.SubmissionYear AS NcesSideVintageEndYearDate_SubmissionYear
	, NcesSideVintageEndYearDate.Year AS NcesSideVintageEndYearDate_Year
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
	, Sea.PhysicalAd