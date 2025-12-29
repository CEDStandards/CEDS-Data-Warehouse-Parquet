-- View: RDS.vwDimContactsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimContactsParquet] AS
CREATE   VIEW RDS.vwDimContactsParquet AS SELECT fact.DimContactId
	, fact.PersonalTitleOrPrefix
	, fact.FirstName
	, fact.MiddleName
	, fact.LastOrSurname
	, fact.GenerationCodeOrSuffix
	, fact.PrimaryTelephoneNumberIndicator
	, fact.PositionTitle
	, fact.ElectronicMailAddressWork
	, fact.TelephoneNumberWork
FROM RDS.DimContacts fact
