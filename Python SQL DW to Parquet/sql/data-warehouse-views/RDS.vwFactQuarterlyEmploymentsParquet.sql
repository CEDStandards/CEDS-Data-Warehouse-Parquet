-- View: RDS.vwFactQuarterlyEmploymentsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwFactQuarterlyEmploymentsParquet] AS
CREATE   VIEW RDS.vwFactQuarterlyEmploymentsParquet AS SELECT fact.FactQuarterlyEmploymentId
	, EmploymentRecordReferencePeriodStartDate.DateValue AS EmploymentRecordReferencePeriodStartDate_DateValue
	, EmploymentRecordReferencePeriodStartDate.Day AS EmploymentRecordReferencePeriodStartDate_Day
	, EmploymentRecordReferencePeriodStartDate.DayOfWeek AS EmploymentRecordReferencePeriodStartDate_DayOfWeek
	, EmploymentRecordReferencePeriodStartDate.DayOfYear AS EmploymentRecordReferencePeriodStartDate_DayOfYear
	, EmploymentRecordReferencePeriodStartDate.Month AS EmploymentRecordReferencePeriodStartDate_Month
	, EmploymentRecordReferencePeriodStartDate.MonthName AS EmploymentRecordReferencePeriodStartDate_MonthName
	, EmploymentRecordReferencePeriodStartDate.SubmissionYear AS EmploymentRecordReferencePeriodStartDate_SubmissionYear
	, EmploymentRecordReferencePeriodStartDate.Year AS EmploymentRecordReferencePeriodStartDate_Year
	, EmploymentRecordReferencePeriodEndDate.DateValue AS EmploymentRecordReferencePeriodEndDate_DateValue
	, EmploymentRecordReferencePeriodEndDate.Day AS EmploymentRecordReferencePeriodEndDate_Day
	, EmploymentRecordReferencePeriodEndDate.DayOfWeek AS EmploymentRecordReferencePeriodEndDate_DayOfWeek
	, EmploymentRecordReferencePeriodEndDate.DayOfYear AS EmploymentRecordReferencePeriodEndDate_DayOfYear
	, EmploymentRecordReferencePeriodEndDate.Month AS EmploymentRecordReferencePeriodEndDate_Month
	, EmploymentRecordReferencePeriodEndDate.MonthName AS EmploymentRecordReferencePeriodEndDate_MonthName
	, EmploymentRecordReferencePeriodEndDate.SubmissionYear AS EmploymentRecordReferencePeriodEndDate_SubmissionYear
	, EmploymentRecordReferencePeriodEndDate.Year AS EmploymentRecordReferencePeriodEndDate_Year
	, Employer.EmployerOrganizationName AS Employer_EmployerOrganizationName
	, Employer.EmployerOrganizationIdentifierSea AS Employer_EmployerOrganizationIdentifierSea
	, Employer.SeaOrganizationName AS Employer_SeaOrganizationName
	, Employer.SeaOrganizationIdentifierSea AS Employer_SeaOrganizationIdentifierSea
	, Employer.StateAnsiCode AS Employer_StateAnsiCode
	, Employer.StateAbbreviationCode AS Employer_StateAbbreviationCode
	, Employer.StateAbbreviationDescription AS Employer_StateAbbreviationDescription
	, Employer.MailingAddressStreetNumberAndName AS Employer_MailingAddressStreetNumberAndName
	, Employer.MailingAddressApartmentRoomOrSuiteNumber AS Employer_MailingAddressApartmentRoomOrSuiteNumber
	, Employer.MailingAddressCity AS Employer_MailingAddressCity
	, Employer.MailingAddressStateAbbreviation AS Employer_MailingAddressStateAbbreviation
	, Employer.MailingAddressPostalCode AS Employer_MailingAddressPostalCode
	, Employer.MailingAddressCountyAnsiCodeCode AS Employer_MailingAddressCountyAnsiCodeCode
	, Employer.OutOfStateIndicator AS Employer_OutOfStateIndicator
	, Employer.OrganizationOperationalStatus AS Employer_OrganizationOperationalStatus
	, Employer.OperationalStatusEffectiveDate AS Employer_OperationalStatusEffectiveDate
	, Employer.PhysicalAddressStreetNumberAndName AS Employer_PhysicalAddressStreetNumberAndName
	, Employer.PhysicalAddressApartmentRoomOrSuiteNumber AS Employer_PhysicalAddressApartmentRoomOrSuiteNumber
	, Employer.PhysicalAddressCity AS Employer_PhysicalAddressCity
	, Employer.PhysicalAddressPostalCode AS Employer_PhysicalAddressPostalCode
	, Employer.PhysicalAddressStateAbbreviation AS Employer_PhysicalAddressStateAbbreviation
	, Employer.PhysicalAddressCountyAnsiCodeCode AS Employer_PhysicalAddressCountyAnsiCodeCode
	, Employer.TelephoneNumber AS Employer_TelephoneNumber
	, Employer.WebSiteAddress AS Employer_WebSiteAddress
	, Employer.OrganizationRegionGeoJson AS Employer_OrganizationRegionGeoJson
	, Employer.Latitude AS Employer_Latitude
	, Employer.Longitude AS Employer_Longitude
	, Employer.RecordStartDateTime AS Employer_RecordStartDateTime
	, Employer.RecordEndDateTime AS Employer_RecordEndDateTime
	, Person.FirstName AS Pe