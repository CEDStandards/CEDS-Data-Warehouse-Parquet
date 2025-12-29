-- View: RDS.vwFactFacilitiesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwFactFacilitiesParquet] AS
CREATE   VIEW RDS.vwFactFacilitiesParquet AS SELECT fact.FactFacilityId
	, FacilityUtilizationStatus.BuildingUseTypeCode AS FacilityUtilizationStatus_BuildingUseTypeCode
	, FacilityUtilizationStatus.BuildingUseTypeDescription AS FacilityUtilizationStatus_BuildingUseTypeDescription
	, Organization.OrganizationName AS Organization_OrganizationName
	, Organization.ShortNameOfOrganization AS Organization_ShortNameOfOrganization
	, Organization.OrganizationIdentifierSea AS Organization_OrganizationIdentifierSea
	, Organization.OrganizationIdentifierDuns AS Organization_OrganizationIdentifierDuns
	, Organization.OrganizationIdentifierFein AS Organization_OrganizationIdentifierFein
	, Organization.OrganizationTypeCode AS Organization_OrganizationTypeCode
	, Organization.OrganizationTypeDescription AS Organization_OrganizationTypeDescription
	, Organization.OrganizationOperationalStatusCode AS Organization_OrganizationOperationalStatusCode
	, Organization.OrganizationOperationalStatusDescription AS Organization_OrganizationOperationalStatusDescription
	, Organization.OperationalStatusEffectiveDate AS Organization_OperationalStatusEffectiveDate
	, Organization.StateAnsiCode AS Organization_StateAnsiCode
	, Organization.StateAbbreviationCode AS Organization_StateAbbreviationCode
	, Organization.StateAbbreviationDescription AS Organization_StateAbbreviationDescription
	, Organization.TelephoneNumberMain AS Organization_TelephoneNumberMain
	, Organization.TelephoneNumberFax AS Organization_TelephoneNumberFax
	, Organization.ElectronicMailAddress AS Organization_ElectronicMailAddress
	, Organization.WebSiteAddress AS Organization_WebSiteAddress
	, Organization.OutOfStateIndicator AS Organization_OutOfStateIndicator
	, Organization.OrganizationRegionGeoJson AS Organization_OrganizationRegionGeoJson
	, Organization.RecordStartDateTime AS Organization_RecordStartDateTime
	, Organization.RecordEndDateTime AS Organization_RecordEndDateTime
	, CountDate.DateValue AS CountDate_DateValue
	, CountDate.Day AS CountDate_Day
	, CountDate.DayOfWeek AS CountDate_DayOfWeek
	, CountDate.DayOfYear AS CountDate_DayOfYear
	, CountDate.Month AS CountDate_Month
	, CountDate.MonthName AS CountDate_MonthName
	, CountDate.SubmissionYear AS CountDate_SubmissionYear
	, CountDate.Year AS CountDate_Year
	, SchoolYear.SchoolYear AS SchoolYear_SchoolYear
	, SchoolYear.SessionBeginDate AS SchoolYear_SessionBeginDate
	, SchoolYear.SessionEndDate AS SchoolYear_SessionEndDate
	, Facility.FacilitiesIdentifier AS Facility_FacilitiesIdentifier
	, Facility.FacilityBuildingName AS Facility_FacilityBuildingName
	, Facility.BuilidingSiteNumber AS Facility_BuilidingSiteNumber
	, Facility.BuildingArea AS Facility_BuildingArea
	, Facility.TemperatureControlledBuildingArea AS Facility_TemperatureControlledBuildingArea
	, Facility.BuildingNumberOfStories AS Facility_BuildingNumberOfStories
	, Facility.BuildingYearBuilt AS Facility_BuildingYearBuilt
	, Facility.BuildingYearOfLastModernization AS Facility_BuildingYearOfLastModernization
	, Facility.FacilityBlockNumberArea AS Facility_FacilityBlockNumberArea
	, Facility.FacilityCensusTract AS Facility_FacilityCensusTract
	, Facility.FacilityConstructionDate AS Facility_FacilityConstructionDate
	, Facility.FacilityConstructionDateTypeCode AS Facility_FacilityConstructionDateTypeCode
	, Facility.FacilityConstructionDateTypeDescription AS Facility_FacilityConstructionDateTypeDescription
	, Facility.FacilityConstructionYear AS Facility_FacilityConstructionYear
	, Facility.FacilityExpectedLife AS Facility_FacilityExpectedLife
	, Facility.FacilitySiteArea AS Facility_FacilitySiteArea
	, Facility.FacilitySiteIdentifier AS Facility_FacilitySiteIdentifier
	, FacilitySpaceStatus.FacilitySpaceUseTypeCode AS FacilitySpaceStatus_FacilitySpaceUseTypeCode
	, FacilitySpaceStatus.FacilitySpaceUseTypeDescription AS FacilitySpaceStatus_FacilitySpaceUseTypeDescription
	, FacilityStatus.FacilityLeaseAmoun