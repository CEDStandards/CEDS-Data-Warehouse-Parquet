-- View: RDS.vwBridgeFacilityOrganizationAddressesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeFacilityOrganizationAddressesParquet] AS
CREATE   VIEW RDS.vwBridgeFacilityOrganizationAddressesParquet AS SELECT fact.BridgeFacilityOrganizationAddressId
	, OrganizationAddress.AddressStreetNumberAndName AS OrganizationAddress_AddressStreetNumberAndName
	, OrganizationAddress.AddressApartmentRoomOrSuiteNumber AS OrganizationAddress_AddressApartmentRoomOrSuiteNumber
	, OrganizationAddress.BuildingSiteNumber AS OrganizationAddress_BuildingSiteNumber
	, OrganizationAddress.AddressCity AS OrganizationAddress_AddressCity
	, OrganizationAddress.AddressStateAbbreviation AS OrganizationAddress_AddressStateAbbreviation
	, OrganizationAddress.AddressPostalCode AS OrganizationAddress_AddressPostalCode
	, OrganizationAddress.CountyAnsiCodeCode AS OrganizationAddress_CountyAnsiCodeCode
	, OrganizationAddress.AddressCountyName AS OrganizationAddress_AddressCountyName
	, OrganizationAddress.Latitude AS OrganizationAddress_Latitude
	, OrganizationAddress.Longitude AS OrganizationAddress_Longitude
	, OrganizationAddress.AddressTypeForOrganizationCode AS OrganizationAddress_AddressTypeForOrganizationCode
	, OrganizationAddress.AddressTypeForOrganizationDescription AS OrganizationAddress_AddressTypeForOrganizationDescription
	, OrganizationAddress.RecordStartDateTime AS OrganizationAddress_RecordStartDateTime
	, OrganizationAddress.RecordEndDateTime AS OrganizationAddress_RecordEndDateTime
FROM RDS.BridgeFacilityOrganizationAddresses fact
JOIN RDS.FactFacilities Facility
	ON Fact.FacilityId = Facility.FactFacilityId
JOIN RDS.DimOrganizationAddresses OrganizationAddress
	ON Fact.OrganizationAddressId = OrganizationAddress.DimOrganizationAddressId
