CREATE OR ALTER VIEW [RDS].[vwDimContactsParquet] AS
	SELECT fact.DimContactId
	, fact.PersonalTitleOrPrefix
	, fact.FirstName
	, fact.MiddleName
	, fact.LastOrSurname
	, fact.GenerationCodeOrSuffix
	, fact.PositionTitle
	, fact.ElectronicMailAddressWork
	, fact.TelephoneNumberWork
FROM RDS.DimContacts fact
