-- View: RDS.vwDimFacilitiesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimFacilitiesParquet] AS
CREATE   VIEW RDS.vwDimFacilitiesParquet AS SELECT fact.DimFacilityId
	, fact.FacilitiesIdentifier
	, fact.FacilityBuildingName
	, fact.BuilidingSiteNumber
	, fact.BuildingArea
	, fact.TemperatureControlledBuildingArea
	, fact.BuildingNumberOfStories
	, fact.BuildingYearBuilt
	, fact.BuildingYearOfLastModernization
	, fact.FacilityBlockNumberArea
	, fact.FacilityCensusTract
	, fact.FacilityConstructionDate
	, fact.FacilityConstructionDateTypeCode
	, fact.FacilityConstructionDateTypeDescription
	, fact.FacilityConstructionYear
	, fact.FacilityExpectedLife
	, fact.FacilitySiteArea
	, fact.FacilitySiteIdentifier
FROM RDS.DimFacilities fact
