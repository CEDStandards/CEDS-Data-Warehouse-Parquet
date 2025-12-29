-- View: RDS.vwBridgeDirectoryOrganizationAddressesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeDirectoryOrganizationAddressesParquet] AS
CREATE   VIEW RDS.vwBridgeDirectoryOrganizationAddressesParquet AS SELECT fact.BridgeDirectoryAddressId
	, FactDirectory.ComprehensiveAndTargetedSupportI AS FactDirectory_ComprehensiveAndTargetedSupportI
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
FROM RDS.BridgeDirectoryOrganizationAddresses fact
JOIN RDS.FactDirectory FactDirectory
	ON Fact.FactDirectoryId = FactDirectory.FactDirectoryId
JOIN RDS.DimOrganizationAddresses OrganizationAddress
	ON Fact.OrganizationAddressId = OrganizationAddress.DimOrganizationAddressId
