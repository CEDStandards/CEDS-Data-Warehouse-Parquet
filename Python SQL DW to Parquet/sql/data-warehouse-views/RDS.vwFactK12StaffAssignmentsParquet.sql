-- View: RDS.vwFactK12StaffAssignmentsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwFactK12StaffAssignmentsParquet] AS
CREATE   VIEW RDS.vwFactK12StaffAssignmentsParquet AS SELECT fact.FactK12StaffAssignmentId
	, Lea.IeuOrganizationName AS Lea_IeuOrganizationName
	, Lea.IeuOrganizationIdentifierSea AS Lea_IeuOrganizationIdentifierSea
	, Lea.StateAnsiCode AS Lea_StateAnsiCode
	, Lea.StateAbbreviationCode AS Lea_StateAbbreviationCode
	, Lea.StateAbbreviationDescription AS Lea_StateAbbreviationDescription
	, Lea.SeaOrganizationName AS Lea_SeaOrganizationName
	, Lea.SeaOrganizationIdentifierSea AS Lea_SeaOrganizationIdentifierSea
	, Lea.LeaOrganizationName AS Lea_LeaOrganizationName
	, Lea.LeaIdentifierNces AS Lea_LeaIdentifierNces
	, Lea.LeaIdentifierSea AS Lea_LeaIdentifierSea
	, Lea.PriorLeaIdentifierSea AS Lea_PriorLeaIdentifierSea
	, Lea.LeaSupervisoryUnionIdentificationNumber AS Lea_LeaSupervisoryUnionIdentificationNumber
	, Lea.ReportedFederally AS Lea_ReportedFederally
	, Lea.LeaTypeCode AS Lea_LeaTypeCode
	, Lea.LeaTypeDescription AS Lea_LeaTypeDescription
	, Lea.LeaTypeEdFactsCode AS Lea_LeaTypeEdFactsCode
	, Lea.MailingAddressStreetNumberAndName AS Lea_MailingAddressStreetNumberAndName
	, Lea.MailingAddressApartmentRoomOrSuiteNumber AS Lea_MailingAddressApartmentRoomOrSuiteNumber
	, Lea.MailingAddressCity AS Lea_MailingAddressCity
	, Lea.MailingAddressPostalCode AS Lea_MailingAddressPostalCode
	, Lea.MailingAddressStateAbbreviation AS Lea_MailingAddressStateAbbreviation
	, Lea.MailingAddressCountyAnsiCodeCode AS Lea_MailingAddressCountyAnsiCodeCode
	, Lea.MailingAddressCountyName AS Lea_MailingAddressCountyName
	, Lea.PhysicalAddressStreetNumberAndName AS Lea_PhysicalAddressStreetNumberAndName
	, Lea.PhysicalAddressApartmentRoomOrSuiteNumber AS Lea_PhysicalAddressApartmentRoomOrSuiteNumber
	, Lea.PhysicalAddressCity AS Lea_PhysicalAddressCity
	, Lea.PhysicalAddressPostalCode AS Lea_PhysicalAddressPostalCode
	, Lea.PhysicalAddressStateAbbreviation AS Lea_PhysicalAddressStateAbbreviation
	, Lea.PhysicalAddressCountyAnsiCodeCode AS Lea_PhysicalAddressCountyAnsiCodeCode
	, Lea.PhysicalAddressCountyName AS Lea_PhysicalAddressCountyName
	, Lea.Longitude AS Lea_Longitude
	, Lea.Latitude AS Lea_Latitude
	, Lea.TelephoneNumber AS Lea_TelephoneNumber
	, Lea.WebSiteAddress AS Lea_WebSiteAddress
	, Lea.OutOfStateIndicator AS Lea_OutOfStateIndicator
	, Lea.LeaOperationalStatus AS Lea_LeaOperationalStatus
	, Lea.LeaOperationalStatusEdFactsCode AS Lea_LeaOperationalStatusEdFactsCode
	, Lea.OperationalStatusEffectiveDate AS Lea_OperationalStatusEffectiveDate
	, Lea.CharterLeaStatus AS Lea_CharterLeaStatus
	, Lea.ReconstitutedStatus AS Lea_ReconstitutedStatus
	, Lea.McKinneyVentoSubgrantRecipient AS Lea_McKinneyVentoSubgrantRecipient
	, Lea.RecordStartDateTime AS Lea_RecordStartDateTime
	, Lea.RecordEndDateTime AS Lea_RecordEndDateTime
	, SchoolYear.SchoolYear AS SchoolYear_SchoolYear
	, SchoolYear.SessionBeginDate AS SchoolYear_SessionBeginDate
	, SchoolYear.SessionEndDate AS SchoolYear_SessionEndDate
	, K12School.LeaOrganizationName AS K12School_LeaOrganizationName
	, K12School.LeaIdentifierNces AS K12School_LeaIdentifierNces
	, K12School.LeaIdentifierSea AS K12School_LeaIdentifierSea
	, K12School.NameOfInstitution AS K12School_NameOfInstitution
	, K12School.SchoolIdentifierNces AS K12School_SchoolIdentifierNces
	, K12School.SchoolIdentifierSea AS K12School_SchoolIdentifierSea
	, K12School.SchoolIdentifierAct AS K12School_SchoolIdentifierAct
	, K12School.SeaOrganizationName AS K12School_SeaOrganizationName
	, K12School.SeaOrganizationIdentifierSea AS K12School_SeaOrganizationIdentifierSea
	, K12School.StateAnsiCode AS K12School_StateAnsiCode
	, K12School.StateAbbreviationCode AS K12School_StateAbbreviationCode
	, K12School.StateAbbreviationDescription AS K12School_StateAbbreviationDescription
	, K12School.PriorLeaIdentifierSea AS K12School_PriorLeaIdentifierSea
	, K12School.PriorSchoolIdentifierSea AS K12School_PriorSchoolIdentifierSea
	, K12School.CharterSchoolIndicator AS K12School_Charter