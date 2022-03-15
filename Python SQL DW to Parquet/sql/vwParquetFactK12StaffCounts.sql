CREATE VIEW RDS.vwParquetFactK12StudentEnrollments AS

	SELECT fact.FactK12StaffCountId
		, DimSchoolYears.SchoolYear
		, DimSchoolYears.SessionBeginDate
		, DimSchoolYears.SessionEndDate
		, DimFactTypes.FactTypeCode
		, DimFactTypes.FactTypeDescription
		, DimK12Staff.BirthDate
		, DimK12Staff.FirstName
		, DimK12Staff.LastOrSurname
		, DimK12Staff.MiddleName
		, DimK12Staff.StaffMemberIdentifierState
		, DimK12Staff.ElectronicMailAddress
		, DimK12Staff.K12StaffRole
		, DimK12Staff.TelephoneNumber
		, DimK12Staff.PositionTitle
		, DimK12Staff.RecordStartDateTime
		, DimK12Staff.RecordEndDateTime
		, DimK12StaffStatuses.SpecialEducationAgeGroupTaughtCode
		, DimK12StaffStatuses.SpecialEducationAgeGroupTaughtDescription
		, DimK12StaffStatuses.SpecialEducationAgeGroupTaughtEdFactsCode
		, DimK12StaffStatuses.CertificationStatusCode
		, DimK12StaffStatuses.CertificationStatusDescription
		, DimK12StaffStatuses.CertificationStatusEdFactsCode
		, DimK12StaffStatuses.K12StaffClassificationCode
		, DimK12StaffStatuses.K12StaffClassificationDescription
		, DimK12StaffStatuses.K12StaffClassificationEdFactsCode
		, DimK12StaffStatuses.QualificationStatusCode
		, DimK12StaffStatuses.QualificationStatusDescription
		, DimK12StaffStatuses.QualificationStatusEdFactsCode
		, DimK12StaffStatuses.EdFactsTeacherInexperiencedStatusCode
		, DimK12StaffStatuses.EdFactsTeacherInexperiencedStatusDescription
		, DimK12StaffStatuses.EdFactsTeacherInexperiencedStatusEdFactsCode
		, DimK12StaffStatuses.EmergencyOrProvisionalCredentialStatusCode
		, DimK12StaffStatuses.EmergencyOrProvisionalCredentialStatusDescription
		, DimK12StaffStatuses.EmergencyOrProvisionalCredentialStatusEdFactsCode
		, DimK12StaffStatuses.EdFactsTeacherOutOfFieldStatusCode
		, DimK12StaffStatuses.EdFactsTeacherOutOfFieldStatusDescription
		, DimK12StaffStatuses.EdFactsTeacherOutOfFieldStatusEdFactsCode
		, DimK12Schools.LeaName AS K12Schools_LeaName
		, DimK12Schools.LeaIdentifierNces AS K12Schools_LeaIdentifierNces
		, DimK12Schools.LeaIdentifierSea AS K12Schools_LeaIdentifierSea
		, DimK12Schools.NameOfInstitution AS K12Schools_NameOfInstitution
		, DimK12Schools.SchoolIdentifierNces AS K12Schools_SchoolIdentifierNces
		, DimK12Schools.SchoolIdentifierSea AS K12Schools_SchoolIdentifierSea
		, DimK12Schools.SeaOrganizationName AS K12Schools_SeaOrganizationName
		, DimK12Schools.SeaIdentifierSea AS K12Schools_SeaIdentifierSea
		, DimK12Schools.StateAnsiCode AS K12Schools_StateAnsiCode
		, DimK12Schools.StateAbbreviationCode AS K12Schools_StateAbbreviationCode
		, DimK12Schools.StateAbbreviationDescription AS K12Schools_StateAbbreviationDescription
		, DimK12Schools.PrimaryCharterSchoolAuthorizingOrganizationIdentifierSea AS K12Schools_PrimaryCharterSchoolAuthorizingOrganizationIdentifierSea
		, DimK12Schools.SecondaryCharterSchoolAuthorizingOrganizationIdentifierSea AS K12Schools_SecondaryCharterSchoolAuthorizingOrganizationIdentifierSea
		, DimK12Schools.OperationalStatusEffectiveDate AS K12Schools_OperationalStatusEffectiveDate
		, DimK12Schools.PriorLeaIdentifierSea AS K12Schools_PriorLeaIdentifierSea
		, DimK12Schools.PriorSchoolIdentifierSea AS K12Schools_PriorSchoolIdentifierSea
		, DimK12Schools.CharterSchoolIndicator AS K12Schools_CharterSchoolIndicator
		, DimK12Schools.CharterSchoolContractIdNumber AS K12Schools_CharterSchoolContractIdNumber
		, DimK12Schools.CharterSchoolContractApprovalDate AS K12Schools_CharterSchoolContractApprovalDate
		, DimK12Schools.CharterSchoolContractRenewalDate AS K12Schools_CharterSchoolContractRenewalDate
		, DimK12Schools.ReportedFederally AS K12Schools_ReportedFederally
		, DimK12Schools.LeaTypeCode AS K12Schools_LeaTypeCode
		, DimK12Schools.LeaTypeDescription AS K12Schools_LeaTypeDescription
		, DimK12Schools.LeaTypeEdFactsCode AS K12Schools_LeaTypeEdFactsCode
		, DimK12Schools.SchoolTypeCode AS K12Schools_SchoolTypeCode
		, DimK12Schools.SchoolTypeDescription AS K12Schools_SchoolTypeDescription
		, DimK12Schools.SchoolTypeEdFactsCode AS K12Schools_SchoolTypeEdFactsCode
		, DimK12Schools.MailingAddressCity AS K12Schools_MailingAddressCity
		, DimK12Schools.MailingAddressPostalCode AS K12Schools_MailingAddressPostalCode
		, DimK12Schools.MailingAddressStateAbbreviation AS K12Schools_MailingAddressStateAbbreviation
		, DimK12Schools.MailingAddressStreetNumberAndName AS K12Schools_MailingAddressStreetNumberAndName
		, DimK12Schools.PhysicalAddressCity AS K12Schools_PhysicalAddressCity
		, DimK12Schools.PhysicalAddressPostalCode AS K12Schools_PhysicalAddressPostalCode
		, DimK12Schools.PhysicalAddressStateAbbreviation AS K12Schools_PhysicalAddressStateAbbreviation
		, DimK12Schools.PhysicalAddressStreetNumberAndName AS K12Schools_PhysicalAddressStreetNumberAndName
		, DimK12Schools.TelephoneNumber AS K12Schools_TelephoneNumber
		, DimK12Schools.WebSiteAddress AS K12Schools_WebSiteAddress
		, DimK12Schools.OutOfStateIndicator AS K12Schools_OutOfStateIndicator
		, DimK12Schools.RecordStartDateTime AS K12Schools_RecordStartDateTime
		, DimK12Schools.RecordEndDateTime AS K12Schools_RecordEndDateTime
		, DimK12Schools.SchoolOperationalStatus AS K12Schools_SchoolOperationalStatus
		, DimK12Schools.SchoolOperationalStatusEdFactsCode AS K12Schools_SchoolOperationalStatusEdFactsCode
		, DimK12Schools.CharterSchoolStatus AS K12Schools_CharterSchoolStatus
		, DimK12Schools.ReconstitutedStatus AS K12Schools_ReconstitutedStatus
		, DimK12Schools.MailingAddressApartmentRoomOrSuiteNumber AS K12Schools_MailingAddressApartmentRoomOrSuiteNumber
		, DimK12Schools.PhysicalAddressApartmentRoomOrSuiteNumber AS K12Schools_PhysicalAddressApartmentRoomOrSuiteNumber
		, DimK12Schools.IeuOrganizationName AS K12Schools_IeuOrganizationName
		, DimK12Schools.IeuOrganizationIdentifierSea AS K12Schools_IeuOrganizationIdentifierSea
		, DimK12Schools.MailingAddressCountyAnsiCode AS K12Schools_MailingAddressCountyAnsiCode
		, DimK12Schools.PhysicalAddressCountyAnsiCode AS K12Schools_PhysicalAddressCountyAnsiCode
		, DimK12Schools.Longitude AS K12Schools_Longitude
		, DimK12Schools.Latitude AS K12Schools_Latitude
		, DimK12Schools.SchoolOperationalStatusEffectiveDate AS K12Schools_SchoolOperationalStatusEffectiveDate
		, DimK12Schools.AdministrativeFundingControlCode AS K12Schools_AdministrativeFundingControlCode
		, DimK12Schools.AdministrativeFundingControlDescription AS K12Schools_AdministrativeFundingControlDescription
		, fact.StaffCount
		, fact.StaffFullTimeEquivalency
		, DimK12StaffCategories.SpecialEducationSupportServicesCategoryCode
		, DimK12StaffCategories.SpecialEducationSupportServicesCategoryDescription
		, DimK12StaffCategories.SpecialEducationSupportServicesCategoryEdFactsCode
		, DimK12StaffCategories.TitleIProgramStaffCategoryCode
		, DimK12StaffCategories.TitleIProgramStaffCategoryDescription
		, DimK12StaffCategories.TitleIProgramStaffCategoryEdFactsCode
		, DimTitleIIIStatuses.FormerEnglishLearnerYearStatusCode
		, DimTitleIIIStatuses.FormerEnglishLearnerYearStatusDescription
		, DimTitleIIIStatuses.FormerEnglishLearnerYearStatusEdFactsCode
		, DimTitleIIIStatuses.ProficiencyStatusCode
		, DimTitleIIIStatuses.ProficiencyStatusDescription
		, DimTitleIIIStatuses.ProficiencyStatusEdFactsCode
		, DimTitleIIIStatuses.TitleiiiAccountabilityProgressStatusCode
		, DimTitleIIIStatuses.TitleiiiAccountabilityProgressStatusDescription
		, DimTitleIIIStatuses.TitleiiiAccountabilityProgressStatusEdFactsCode
		, DimTitleIIIStatuses.TitleiiiLanguageInstructionProgramTypeCode
		, DimTitleIIIStatuses.TitleiiiLanguageInstructionProgramTypeDescription
		, DimTitleIIIStatuses.TitleiiiLanguageInstructionProgramTypeEdFactsCode
		, DimLeas.OperationalStatusEffectiveDate AS Leas_OperationalStatusEffectiveDate
		, DimLeas.LeaName AS Leas_LeaName
		, DimLeas.LeaIdentifierNces AS Leas_LeaIdentifierNces
		, DimLeas.LeaIdentifierSea AS Leas_LeaIdentifierSea
		, DimLeas.PriorLeaIdentifierSea AS Leas_PriorLeaIdentifierSea
		, DimLeas.SeaOrganizationName AS Leas_SeaOrganizationName
		, DimLeas.SeaIdentifierSea AS Leas_SeaIdentifierSea
		, DimLeas.StateAnsiCode AS Leas_StateAnsiCode
		, DimLeas.StateAbbreviationCode AS Leas_StateAbbreviationCode
		, DimLeas.StateAbbreviationDescription AS Leas_StateAbbreviationDescription
		, DimLeas.LeaSupervisoryUnionIdentificationNumber AS Leas_LeaSupervisoryUnionIdentificationNumber
		, DimLeas.ReportedFederally AS Leas_ReportedFederally
		, DimLeas.LeaTypeCode AS Leas_LeaTypeCode
		, DimLeas.LeaTypeDescription AS Leas_LeaTypeDescription
		, DimLeas.LeaTypeEdFactsCode AS Leas_LeaTypeEdFactsCode
		, DimLeas.MailingAddressCity AS Leas_MailingAddressCity
		, DimLeas.MailingAddressPostalCode AS Leas_MailingAddressPostalCode
		, DimLeas.MailingAddressStateAbbreviation AS Leas_MailingAddressStateAbbreviation
		, DimLeas.MailingAddressStreetNumberAndName AS Leas_MailingAddressStreetNumberAndName
		, DimLeas.PhysicalAddressCity AS Leas_PhysicalAddressCity
		, DimLeas.PhysicalAddressPostalCode AS Leas_PhysicalAddressPostalCode
		, DimLeas.PhysicalAddressStateAbbreviation AS Leas_PhysicalAddressStateAbbreviation
		, DimLeas.PhysicalAddressStreetNumberAndName AS Leas_PhysicalAddressStreetNumberAndName
		, DimLeas.TelephoneNumber AS Leas_TelephoneNumber
		, DimLeas.WebSiteAddress AS Leas_WebSiteAddress
		, DimLeas.OutOfStateIndicator AS Leas_OutOfStateIndicator
		, DimLeas.RecordStartDateTime AS Leas_RecordStartDateTime
		, DimLeas.RecordEndDateTime AS Leas_RecordEndDateTime
		, DimLeas.LeaOperationalStatus AS Leas_LeaOperationalStatus
		, DimLeas.LeaOperationalStatusEdFactsCode AS Leas_LeaOperationalStatusEdFactsCode
		, DimLeas.CharterLeaStatus AS Leas_CharterLeaStatus
		, DimLeas.ReconstitutedStatus AS Leas_ReconstitutedStatus
		, DimLeas.MailingAddressApartmentRoomOrSuiteNumber AS Leas_MailingAddressApartmentRoomOrSuiteNumber
		, DimLeas.PhysicalAddressApartmentRoomOrSuiteNumber AS Leas_PhysicalAddressApartmentRoomOrSuiteNumber
		, DimLeas.McKinneyVentoSubgrantRecipient AS Leas_McKinneyVentoSubgrantRecipient
		, DimLeas.IeuOrganizationName AS Leas_IeuOrganizationName
		, DimLeas.IeuOrganizationIdentifierSea AS Leas_IeuOrganizationIdentifierSea
		, DimLeas.NameOfInstitution AS Leas_NameOfInstitution
		, DimLeas.MailingAddressCountyAnsiCode AS Leas_MailingAddressCountyAnsiCode
		, DimLeas.PhysicalAddressCountyAnsiCode AS Leas_PhysicalAddressCountyAnsiCode
		, DimLeas.Longitude AS Leas_Longitude
		, DimLeas.Latitude AS Leas_Latitude
		, DimLeas.EffectiveDate AS Leas_EffectiveDate
		, DimSeas.SeaOrganizationName AS Seas_SeaOrganizationName
		, DimSeas.SeaIdentifierSea AS Seas_SeaIdentifierSea
		, DimSeas.StateAnsiCode AS Seas_StateAnsiCode
		, DimSeas.StateAbbreviationCode AS Seas_StateAbbreviationCode
		, DimSeas.StateAbbreviationDescription AS Seas_StateAbbreviationDescription
		, DimSeas.MailingAddressCity AS Seas_MailingAddressCity
		, DimSeas.MailingAddressPostalCode AS Seas_MailingAddressPostalCode
		, DimSeas.MailingAddressStateAbbreviation AS Seas_MailingAddressStateAbbreviation
		, DimSeas.MailingAddressStreetNumberAndName AS Seas_MailingAddressStreetNumberAndName
		, DimSeas.PhysicalAddressCity AS Seas_PhysicalAddressCity
		, DimSeas.PhysicalAddressPostalCode AS Seas_PhysicalAddressPostalCode
		, DimSeas.PhysicalAddressStateAbbreviation AS Seas_PhysicalAddressStateAbbreviation
		, DimSeas.PhysicalAddressStreetNumberAndName AS Seas_PhysicalAddressStreetNumberAndName
		, DimSeas.TelephoneNumber AS Seas_TelephoneNumber
		, DimSeas.WebSiteAddress AS Seas_WebSiteAddress
		, DimSeas.RecordStartDateTime AS Seas_RecordStartDateTime
		, DimSeas.RecordEndDateTime AS Seas_RecordEndDateTime
		, DimSeas.MailingAddressApartmentRoomOrSuiteNumber AS Seas_MailingAddressApartmentRoomOrSuiteNumber
		, DimSeas.PhysicalAddressApartmentRoomOrSuiteNumber AS Seas_PhysicalAddressApartmentRoomOrSuiteNumber
		, DimSeas.MailingAddressCountyAnsiCode AS Seas_MailingAddressCountyAnsiCode
		, DimSeas.PhysicalAddressCountyAnsiCode AS Seas_PhysicalAddressCountyAnsiCode
	FROM RDS.FactK12StaffCounts fact
	JOIN RDS.DimSchoolYears DimSchoolYears
		ON Fact.SchoolYearId = DimSchoolYears.DimSchoolYearId
	JOIN RDS.DimFactTypes DimFactTypes
		ON Fact.FactTypeId = DimFactTypes.DimFactTypeId
	JOIN RDS.DimK12Staff DimK12Staff
		ON Fact.K12StaffId = DimK12Staff.DimK12StaffId
	JOIN RDS.DimK12StaffStatuses DimK12StaffStatuses
		ON Fact.K12StaffStatusId = DimK12StaffStatuses.DimK12StaffStatusId
	JOIN RDS.DimK12Schools DimK12Schools
		ON Fact.K12SchoolId = DimK12Schools.DimK12SchoolId
	JOIN RDS.DimK12StaffCategories DimK12StaffCategories
		ON Fact.K12StaffCategoryId = DimK12StaffCategories.DimK12StaffCategoryId
	JOIN RDS.DimTitleIIIStatuses DimTitleIIIStatuses
		ON Fact.TitleIIIStatusId = DimTitleIIIStatuses.DimTitleIIIStatusId
	JOIN RDS.DimLeas DimLeas
		ON Fact.LeaId = DimLeas.DimLeaId
	JOIN RDS.DimSeas DimSeas
		ON Fact.SeaId = DimSeas.DimSeaId

