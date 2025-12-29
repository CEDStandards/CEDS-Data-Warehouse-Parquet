-- View: RDS.vwBridgeDirectoryContactsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeDirectoryContactsParquet] AS
CREATE   VIEW RDS.vwBridgeDirectoryContactsParquet AS SELECT fact.BridgeDirectoryContactId
	, FactDirectory.ComprehensiveAndTargetedSupportI AS FactDirectory_ComprehensiveAndTargetedSupportI
	, Contact.PersonalTitleOrPrefix AS Contact_PersonalTitleOrPrefix
	, Contact.FirstName AS Contact_FirstName
	, Contact.MiddleName AS Contact_MiddleName
	, Contact.LastOrSurname AS Contact_LastOrSurname
	, Contact.GenerationCodeOrSuffix AS Contact_GenerationCodeOrSuffix
	, Contact.PrimaryTelephoneNumberIndicator AS Contact_PrimaryTelephoneNumberIndicator
	, Contact.PositionTitle AS Contact_PositionTitle
	, Contact.ElectronicMailAddressWork AS Contact_ElectronicMailAddressWork
	, Contact.TelephoneNumberWork AS Contact_TelephoneNumberWork
	, fact.PrimaryContactIndicatorCode
	, fact.PrimaryContactIndicatorDescription
FROM RDS.BridgeDirectoryContacts fact
JOIN RDS.FactDirectory FactDirectory
	ON Fact.FactDirectoryId = FactDirectory.FactDirectoryId
JOIN RDS.DimContacts Contact
	ON Fact.ContactId = Contact.DimContactId
