CREATE OR ALTER VIEW [RDS].[vwDimFacilitiesParquet] AS
	SELECT fact.DimFacilityId
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
	, fact.StateLicensedFacilityCapacity
FROM RDS.DimFacilities fact
