-- View: RDS.vwBridgeK12StudentEnrollmentPersonAddressesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StudentEnrollmentPersonAddressesParquet] AS
CREATE   VIEW RDS.vwBridgeK12StudentEnrollmentPersonAddressesParquet AS SELECT fact.BridgeK12StudentEnrollmentPersonAddressId
	, FactK12StudentEnrollment.RecordStartDateTime AS FactK12StudentEnrollment_RecordStartDateTime
	, FactK12StudentEnrollment.RecordEndDateTime AS FactK12StudentEnrollment_RecordEndDateTime
	, FactK12StudentEnrollment.FullTimeEquivalency AS FactK12StudentEnrollment_FullTimeEquivalency
	, FactK12StudentEnrollment.StudentCount AS FactK12StudentEnrollment_StudentCount
	, PersonAddress.AddressTypeForLearnerOrFamilyCode AS PersonAddress_AddressTypeForLearnerOrFamilyCode
	, PersonAddress.AddressTypeForLearnerOrFamilyDescription AS PersonAddress_AddressTypeForLearnerOrFamilyDescription
	, PersonAddress.AddressStreetNumberAndName AS PersonAddress_AddressStreetNumberAndName
	, PersonAddress.AddressApartmentRoomOrSuiteNumber AS PersonAddress_AddressApartmentRoomOrSuiteNumber
	, PersonAddress.AddressCity AS PersonAddress_AddressCity
	, PersonAddress.StateAbbreviationCode AS PersonAddress_StateAbbreviationCode
	, PersonAddress.StateAbbreviationDescription AS PersonAddress_StateAbbreviationDescription
	, PersonAddress.AddressPostalCode AS PersonAddress_AddressPostalCode
	, PersonAddress.AddressCountyName AS PersonAddress_AddressCountyName
	, PersonAddress.CountryCodeCode AS PersonAddress_CountryCodeCode
	, PersonAddress.CountryCodeDescription AS PersonAddress_CountryCodeDescription
	, PersonAddress.Latitude AS PersonAddress_Latitude
	, PersonAddress.Longitude AS PersonAddress_Longitude
	, PersonAddress.CountyAnsiCodeCode AS PersonAddress_CountyAnsiCodeCode
	, PersonAddress.CountyAnsiCodeDescription AS PersonAddress_CountyAnsiCodeDescription
	, PersonAddress.DoNotPublishIndicator AS PersonAddress_DoNotPublishIndicator
	, PersonAddress.PersonalInformationVerificationCode AS PersonAddress_PersonalInformationVerificationCode
	, PersonAddress.PersonalInformationVerificationDescription AS PersonAddress_PersonalInformationVerificationDescription
	, fact.AddressTypeForLearnerOrFamilyCode
	, fact.AddressTypeForLearnerOrFamilyDescription
FROM RDS.BridgeK12StudentEnrollmentPersonAddresses fact
JOIN RDS.FactK12StudentEnrollments FactK12StudentEnrollment
	ON Fact.FactK12StudentEnrollmentId = FactK12StudentEnrollment.FactK12StudentEnrollmentId
JOIN RDS.DimPersonAddresses PersonAddress
	ON Fact.PersonAddressId = PersonAddress.DimPersonAddressId
