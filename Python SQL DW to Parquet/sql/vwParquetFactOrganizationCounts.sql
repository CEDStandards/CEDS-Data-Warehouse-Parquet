CREATE VIEW RDS.vwParquetFactOrganizationCounts AS

	SELECT fact.FactOrganizationCountId
		, DimSchoolYears.SchoolYear
		, DimSchoolYears.SessionBeginDate
		, DimSchoolYears.SessionEndDate
		, DimFactTypes.FactTypeCode
		, DimFactTypes.FactTypeDescription
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
		, DimK12SchoolStatuses.MagnetOrSpecialProgramEmphasisSchoolCode
		, DimK12SchoolStatuses.MagnetOrSpecialProgramEmphasisSchoolDescription
		, DimK12SchoolStatuses.MagnetOrSpecialProgramEmphasisSchoolEdFactsCode
		, DimK12SchoolStatuses.NslpStatusCode
		, DimK12SchoolStatuses.NslpStatusDescription
		, DimK12SchoolStatuses.NslpStatusEdFactsCode
		, DimK12SchoolStatuses.SharedTimeIndicatorCode
		, DimK12SchoolStatuses.SharedTimeIndicatorDescription
		, DimK12SchoolStatuses.SharedTimeIndicatorEdFactsCode
		, DimK12SchoolStatuses.VirtualSchoolStatusCode
		, DimK12SchoolStatuses.VirtualSchoolStatusDescription
		, DimK12SchoolStatuses.VirtualSchoolStatusEdFactsCode
		, DimK12SchoolStatuses.SchoolImprovementStatusCode
		, DimK12SchoolStatuses.SchoolImprovementStatusDescription
		, DimK12SchoolStatuses.SchoolImprovementStatusEdFactsCode
		, DimK12SchoolStatuses.PersistentlyDangerousStatusCode
		, DimK12SchoolStatuses.PersistentlyDangerousStatusDescription
		, DimK12SchoolStatuses.PersistentlyDangerousStatusEdFactsCode
		, DimK12SchoolStatuses.StatePovertyDesignationCode
		, DimK12SchoolStatuses.StatePovertyDesignationDescription
		, DimK12SchoolStatuses.StatePovertyDesignationEdFactsCode
		, DimK12SchoolStatuses.ProgressAchievingEnglishLanguageProficiencyIndicatorTypeCode
		, DimK12SchoolStatuses.ProgressAchievingEnglishLanguageProficiencyIndicatorTypeDescription
		, DimK12SchoolStatuses.ProgressAchievingEnglishLanguageProficiencyIndicatorTypeEdFactsCode
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
		, DimTitleIStatuses.TitleIInstructionalServicesCode
		, DimTitleIStatuses.TitleIInstructionalServicesDescription
		, DimTitleIStatuses.TitleIInstructionalServicesEdFactsCode
		, DimTitleIStatuses.TitleIProgramTypeCode
		, DimTitleIStatuses.TitleIProgramTypeDescription
		, DimTitleIStatuses.TitleIProgramTypeEdFactsCode
		, DimTitleIStatuses.TitleISchoolStatusCode
		, DimTitleIStatuses.TitleISchoolStatusDescription
		, DimTitleIStatuses.TitleISchoolStatusEdFactsCode
		, DimTitleIStatuses.TitleISupportServicesCode
		, DimTitleIStatuses.TitleISupportServicesDescription
		, DimTitleIStatuses.TitleISupportServicesEdFactsCode
		, fact.OrganizationCount
		, fact.TitleIParentalInvolveRes
		, fact.TitleIPartAAllocations
		, DimCharterSchoolAuthorizers.CharterSchoolAuthorizingOrganizationName			 AS CharterSchoolAuthorizers_CharterSchoolAuthorizingOrganizationName
		, DimCharterSchoolAuthorizers.CharterSchoolAuthorizingOrganizationIdentifierSea	 AS CharterSchoolAuthorizers_CharterSchoolAuthorizingOrganizationIdentifierSea
		, DimCharterSchoolAuthorizers.StateAbbreviationDescription						 AS CharterSchoolAuthorizers_StateAbbreviationDescription
		, DimCharterSchoolAuthorizers.StateAbbreviationCode								 AS CharterSchoolAuthorizers_StateAbbreviationCode
		, DimCharterSchoolAuthorizers.StateANSICode										 AS CharterSchoolAuthorizers_StateANSICode
		, DimCharterSchoolAuthorizers.LeaTypeCode										 AS CharterSchoolAuthorizers_LeaTypeCode
		, DimCharterSchoolAuthorizers.LeaTypeDescription								 AS CharterSchoolAuthorizers_LeaTypeDescription
		, DimCharterSchoolAuthorizers.LeaTypeEdFactsCode								 AS CharterSchoolAuthorizers_LeaTypeEdFactsCode
		, DimCharterSchoolAuthorizers.MailingAddressCity								 AS CharterSchoolAuthorizers_MailingAddressCity
		, DimCharterSchoolAuthorizers.MailingAddressPostalCode							 AS CharterSchoolAuthorizers_MailingAddressPostalCode
		, DimCharterSchoolAuthorizers.MailingAddressStateAbbreviation					 AS CharterSchoolAuthorizers_MailingAddressStateAbbreviation
		, DimCharterSchoolAuthorizers.MailingAddressStreetNumberAndName					 AS CharterSchoolAuthorizers_MailingAddressStreetNumberAndName
		, DimCharterSchoolAuthorizers.PhysicalAddressCity								 AS CharterSchoolAuthorizers_PhysicalAddressCity
		, DimCharterSchoolAuthorizers.PhysicalAddressPostalCode							 AS CharterSchoolAuthorizers_PhysicalAddressPostalCode
		, DimCharterSchoolAuthorizers.PhysicalAddressStateAbbreviation					 AS CharterSchoolAuthorizers_PhysicalAddressStateAbbreviation
		, DimCharterSchoolAuthorizers.PhysicalAddressStreetNumberAndName				 AS CharterSchoolAuthorizers_PhysicalAddressStreetNumberAndName
		, DimCharterSchoolAuthorizers.TelephoneNumber									 AS CharterSchoolAuthorizers_TelephoneNumber
		, DimCharterSchoolAuthorizers.WebSiteAddress									 AS CharterSchoolAuthorizers_WebSiteAddress
		, DimCharterSchoolAuthorizers.OutOfStateIndicator								 AS CharterSchoolAuthorizers_OutOfStateIndicator
		, DimCharterSchoolAuthorizers.RecordStartDateTime								 AS CharterSchoolAuthorizers_RecordStartDateTime
		, DimCharterSchoolAuthorizers.RecordEndDateTime									 AS CharterSchoolAuthorizers_RecordEndDateTime
		, DimCharterSchoolAuthorizers.SchoolIdentifierSea								 AS CharterSchoolAuthorizers_SchoolIdentifierSea
		, DimCharterSchoolAuthorizers.MailingAddressCountyAnsiCode						 AS CharterSchoolAuthorizers_MailingAddressCountyAnsiCode
		, DimCharterSchoolAuthorizers.PhysicalAddressCountyAnsiCode						 AS CharterSchoolAuthorizers_PhysicalAddressCountyAnsiCode
		, DimCharterSchoolAuthorizers.IsApproverAgency									 AS CharterSchoolAuthorizers_IsApproverAgency
		, DimCharterSchoolManagementOrganizations.CharterSchoolManagementOrganizationName					 AS CharterSchoolManagementOrganizations_CharterSchoolManagementOrganizationName
		, DimCharterSchoolManagementOrganizations.CharterSchoolManagementOrganizationIdentifierSea			 AS CharterSchoolManagementOrganizations_CharterSchoolManagementOrganizationIdentifierSea
		, DimCharterSchoolManagementOrganizations.StateAbbreviationDescription								 AS CharterSchoolManagementOrganizations_StateAbbreviationDescription
		, DimCharterSchoolManagementOrganizations.StateAbbreviationCode										 AS CharterSchoolManagementOrganizations_StateAbbreviationCode
		, DimCharterSchoolManagementOrganizations.StateANSICode												 AS CharterSchoolManagementOrganizations_StateANSICode
		, DimCharterSchoolManagementOrganizations.CharterSchoolManagementOrganizationTypeCode				 AS CharterSchoolManagementOrganizations_CharterSchoolManagementOrganizationTypeCode
		, DimCharterSchoolManagementOrganizations.CharterSchoolManagementOrganizationTypeDescription		 AS CharterSchoolManagementOrganizations_CharterSchoolManagementOrganizationTypeDescription
		, DimCharterSchoolManagementOrganizations.CharterSchoolManagementOrganizationTypeEdfactsCode		 AS CharterSchoolManagementOrganizations_CharterSchoolManagementOrganizationTypeEdfactsCode
		, DimCharterSchoolManagementOrganizations.MailingAddressCity										 AS CharterSchoolManagementOrganizations_MailingAddressCity
		, DimCharterSchoolManagementOrganizations.MailingAddressPostalCode									 AS CharterSchoolManagementOrganizations_MailingAddressPostalCode
		, DimCharterSchoolManagementOrganizations.MailingAddressStateAbbreviation							 AS CharterSchoolManagementOrganizations_MailingAddressStateAbbreviation
		, DimCharterSchoolManagementOrganizations.MailingAddressStreetNumberAndName							 AS CharterSchoolManagementOrganizations_MailingAddressStreetNumberAndName
		, DimCharterSchoolManagementOrganizations.PhysicalAddressCity										 AS CharterSchoolManagementOrganizations_PhysicalAddressCity
		, DimCharterSchoolManagementOrganizations.PhysicalAddressPostalCode									 AS CharterSchoolManagementOrganizations_PhysicalAddressPostalCode
		, DimCharterSchoolManagementOrganizations.PhysicalAddressStateAbbreviation							 AS CharterSchoolManagementOrganizations_PhysicalAddressStateAbbreviation
		, DimCharterSchoolManagementOrganizations.PhysicalAddressStreetNumberAndName						 AS CharterSchoolManagementOrganizations_PhysicalAddressStreetNumberAndName
		, DimCharterSchoolManagementOrganizations.TelephoneNumber											 AS CharterSchoolManagementOrganizations_TelephoneNumber
		, DimCharterSchoolManagementOrganizations.WebSiteAddress											 AS CharterSchoolManagementOrganizations_WebSiteAddress
		, DimCharterSchoolManagementOrganizations.OutOfStateIndicator										 AS CharterSchoolManagementOrganizations_OutOfStateIndicator
		, DimCharterSchoolManagementOrganizations.RecordStartDateTime										 AS CharterSchoolManagementOrganizations_RecordStartDateTime
		, DimCharterSchoolManagementOrganizations.RecordEndDateTime											 AS CharterSchoolManagementOrganizations_RecordEndDateTime
		, DimCharterSchoolManagementOrganizations.SchoolIdentifierSea										 AS CharterSchoolManagementOrganizations_SchoolIdentifierSea
		, DimCharterSchoolManagementOrganizations.OrganizationIdentifierFederalEmployerIdentificationNumber	 AS CharterSchoolManagementOrganizations_OrganizationIdentifierFederalEmployerIdentificationNumber
		, DimCharterSchoolSecondaryAuthorizers.CharterSchoolAuthorizingOrganizationName			  AS CharterSchoolSecondaryAuthorizers_CharterSchoolAuthorizingOrganizationName
		, DimCharterSchoolSecondaryAuthorizers.CharterSchoolAuthorizingOrganizationIdentifierSea  AS CharterSchoolSecondaryAuthorizers_CharterSchoolAuthorizingOrganizationIdentifierSea
		, DimCharterSchoolSecondaryAuthorizers.StateAbbreviationDescription						  AS CharterSchoolSecondaryAuthorizers_StateAbbreviationDescription
		, DimCharterSchoolSecondaryAuthorizers.StateAbbreviationCode							  AS CharterSchoolSecondaryAuthorizers_StateAbbreviationCode
		, DimCharterSchoolSecondaryAuthorizers.StateANSICode									  AS CharterSchoolSecondaryAuthorizers_StateANSICode
		, DimCharterSchoolSecondaryAuthorizers.LeaTypeCode										  AS CharterSchoolSecondaryAuthorizers_LeaTypeCode
		, DimCharterSchoolSecondaryAuthorizers.LeaTypeDescription								  AS CharterSchoolSecondaryAuthorizers_LeaTypeDescription
		, DimCharterSchoolSecondaryAuthorizers.LeaTypeEdFactsCode								  AS CharterSchoolSecondaryAuthorizers_LeaTypeEdFactsCode
		, DimCharterSchoolSecondaryAuthorizers.MailingAddressCity								  AS CharterSchoolSecondaryAuthorizers_MailingAddressCity
		, DimCharterSchoolSecondaryAuthorizers.MailingAddressPostalCode							  AS CharterSchoolSecondaryAuthorizers_MailingAddressPostalCode
		, DimCharterSchoolSecondaryAuthorizers.MailingAddressStateAbbreviation					  AS CharterSchoolSecondaryAuthorizers_MailingAddressStateAbbreviation
		, DimCharterSchoolSecondaryAuthorizers.MailingAddressStreetNumberAndName				  AS CharterSchoolSecondaryAuthorizers_MailingAddressStreetNumberAndName
		, DimCharterSchoolSecondaryAuthorizers.PhysicalAddressCity								  AS CharterSchoolSecondaryAuthorizers_PhysicalAddressCity
		, DimCharterSchoolSecondaryAuthorizers.PhysicalAddressPostalCode						  AS CharterSchoolSecondaryAuthorizers_PhysicalAddressPostalCode
		, DimCharterSchoolSecondaryAuthorizers.PhysicalAddressStateAbbreviation					  AS CharterSchoolSecondaryAuthorizers_PhysicalAddressStateAbbreviation
		, DimCharterSchoolSecondaryAuthorizers.PhysicalAddressStreetNumberAndName				  AS CharterSchoolSecondaryAuthorizers_PhysicalAddressStreetNumberAndName
		, DimCharterSchoolSecondaryAuthorizers.TelephoneNumber									  AS CharterSchoolSecondaryAuthorizers_TelephoneNumber
		, DimCharterSchoolSecondaryAuthorizers.WebSiteAddress									  AS CharterSchoolSecondaryAuthorizers_WebSiteAddress
		, DimCharterSchoolSecondaryAuthorizers.OutOfStateIndicator								  AS CharterSchoolSecondaryAuthorizers_OutOfStateIndicator
		, DimCharterSchoolSecondaryAuthorizers.RecordStartDateTime								  AS CharterSchoolSecondaryAuthorizers_RecordStartDateTime
		, DimCharterSchoolSecondaryAuthorizers.RecordEndDateTime								  AS CharterSchoolSecondaryAuthorizers_RecordEndDateTime
		, DimCharterSchoolSecondaryAuthorizers.SchoolIdentifierSea								  AS CharterSchoolSecondaryAuthorizers_SchoolIdentifierSea
		, DimCharterSchoolSecondaryAuthorizers.MailingAddressCountyAnsiCode						  AS CharterSchoolSecondaryAuthorizers_MailingAddressCountyAnsiCode
		, DimCharterSchoolSecondaryAuthorizers.PhysicalAddressCountyAnsiCode					  AS CharterSchoolSecondaryAuthorizers_PhysicalAddressCountyAnsiCode
		, DimCharterSchoolSecondaryAuthorizers.IsApproverAgency									  AS CharterSchoolSecondaryAuthorizers_IsApproverAgency
		, DimCharterSchoolUpdatedManagementOrganizations.CharterSchoolManagementOrganizationName					AS CharterSchoolUpdatedManagementOrganizations_CharterSchoolManagementOrganizationName
		, DimCharterSchoolUpdatedManagementOrganizations.CharterSchoolManagementOrganizationIdentifierSea			AS CharterSchoolUpdatedManagementOrganizations_CharterSchoolManagementOrganizationIdentifierSea
		, DimCharterSchoolUpdatedManagementOrganizations.StateAbbreviationDescription								AS CharterSchoolUpdatedManagementOrganizations_StateAbbreviationDescription
		, DimCharterSchoolUpdatedManagementOrganizations.StateAbbreviationCode										AS CharterSchoolUpdatedManagementOrganizations_StateAbbreviationCode
		, DimCharterSchoolUpdatedManagementOrganizations.StateANSICode												AS CharterSchoolUpdatedManagementOrganizations_StateANSICode
		, DimCharterSchoolUpdatedManagementOrganizations.CharterSchoolManagementOrganizationTypeCode				AS CharterSchoolUpdatedManagementOrganizations_CharterSchoolManagementOrganizationTypeCode
		, DimCharterSchoolUpdatedManagementOrganizations.CharterSchoolManagementOrganizationTypeDescription			AS CharterSchoolUpdatedManagementOrganizations_CharterSchoolManagementOrganizationTypeDescription
		, DimCharterSchoolUpdatedManagementOrganizations.CharterSchoolManagementOrganizationTypeEdfactsCode			AS CharterSchoolUpdatedManagementOrganizations_CharterSchoolManagementOrganizationTypeEdfactsCode
		, DimCharterSchoolUpdatedManagementOrganizations.MailingAddressCity											AS CharterSchoolUpdatedManagementOrganizations_MailingAddressCity
		, DimCharterSchoolUpdatedManagementOrganizations.MailingAddressPostalCode									AS CharterSchoolUpdatedManagementOrganizations_MailingAddressPostalCode
		, DimCharterSchoolUpdatedManagementOrganizations.MailingAddressStateAbbreviation							AS CharterSchoolUpdatedManagementOrganizations_MailingAddressStateAbbreviation
		, DimCharterSchoolUpdatedManagementOrganizations.MailingAddressStreetNumberAndName							AS CharterSchoolUpdatedManagementOrganizations_MailingAddressStreetNumberAndName
		, DimCharterSchoolUpdatedManagementOrganizations.PhysicalAddressCity										AS CharterSchoolUpdatedManagementOrganizations_PhysicalAddressCity
		, DimCharterSchoolUpdatedManagementOrganizations.PhysicalAddressPostalCode									AS CharterSchoolUpdatedManagementOrganizations_PhysicalAddressPostalCode
		, DimCharterSchoolUpdatedManagementOrganizations.PhysicalAddressStateAbbreviation							AS CharterSchoolUpdatedManagementOrganizations_PhysicalAddressStateAbbreviation
		, DimCharterSchoolUpdatedManagementOrganizations.PhysicalAddressStreetNumberAndName							AS CharterSchoolUpdatedManagementOrganizations_PhysicalAddressStreetNumberAndName
		, DimCharterSchoolUpdatedManagementOrganizations.TelephoneNumber											AS CharterSchoolUpdatedManagementOrganizations_TelephoneNumber
		, DimCharterSchoolUpdatedManagementOrganizations.WebSiteAddress												AS CharterSchoolUpdatedManagementOrganizations_WebSiteAddress
		, DimCharterSchoolUpdatedManagementOrganizations.OutOfStateIndicator										AS CharterSchoolUpdatedManagementOrganizations_OutOfStateIndicator
		, DimCharterSchoolUpdatedManagementOrganizations.RecordStartDateTime										AS CharterSchoolUpdatedManagementOrganizations_RecordStartDateTime
		, DimCharterSchoolUpdatedManagementOrganizations.RecordEndDateTime											AS CharterSchoolUpdatedManagementOrganizations_RecordEndDateTime
		, DimCharterSchoolUpdatedManagementOrganizations.SchoolIdentifierSea										AS CharterSchoolUpdatedManagementOrganizations_SchoolIdentifierSea
		, DimCharterSchoolUpdatedManagementOrganizations.OrganizationIdentifierFederalEmployerIdentificationNumber	AS CharterSchoolUpdatedManagementOrganizations_OrganizationIdentifierFederalEmployerIdentificationNumber
		, fact.SchoolImprovementFunds
		, DimK12OrganizationStatuses.ReapAlternativeFundingStatusCode
		, DimK12OrganizationStatuses.ReapAlternativeFundingStatusDescription
		, DimK12OrganizationStatuses.ReapAlternativeFundingStatusEdFactsCode
		, DimK12OrganizationStatuses.GunFreeSchoolsActReportingStatusCode
		, DimK12OrganizationStatuses.GunFreeSchoolsActReportingStatusDescription
		, DimK12OrganizationStatuses.GunFreeSchoolsActReportingStatusEdFactsCode
		, DimK12OrganizationStatuses.HighSchoolGraduationRateIndicatorStatusCode
		, DimK12OrganizationStatuses.HighSchoolGraduationRateIndicatorStatusDescription
		, DimK12OrganizationStatuses.HighSchoolGraduationRateIndicatorStatusEdFactsCode
		, DimK12OrganizationStatuses.McKinneyVentoSubgrantRecipientCode
		, DimK12OrganizationStatuses.McKinneyVentoSubgrantRecipientDescription
		, DimK12OrganizationStatuses.McKinneyVentoSubgrantRecipientEdFactsCode
		, DimK12SchoolStateStatuses.SchoolStateStatusCode
		, DimK12SchoolStateStatuses.SchoolStateStatusDescription
		, DimK12SchoolStateStatuses.SchoolStateStatusEdFactsCode
		, fact.FederalProgramsFundingAllocationType
		, fact.FederalProgramCode
		, fact.FederalProgramsFundingAllocation
		, DimComprehensiveAndTargetedSupports.ComprehensiveAndTargetedSupportCode
		, DimComprehensiveAndTargetedSupports.ComprehensiveAndTargetedSupportDescription
		, DimComprehensiveAndTargetedSupports.ComprehensiveAndTargetedSupportEdFactsCode
		, DimComprehensiveAndTargetedSupports.ComprehensiveSupportCode
		, DimComprehensiveAndTargetedSupports.ComprehensiveSupportDescription
		, DimComprehensiveAndTargetedSupports.ComprehensiveSupportEdFactsCode
		, DimComprehensiveAndTargetedSupports.TargetedSupportCode
		, DimComprehensiveAndTargetedSupports.TargetedSupportDescription
		, DimComprehensiveAndTargetedSupports.TargetedSupportEdFactsCode
		, DimComprehensiveAndTargetedSupports.AdditionalTargetedSupportAndImprovementStatusCode
		, DimComprehensiveAndTargetedSupports.AdditionalTargetedSupportAndImprovementStatusDescription
		, DimComprehensiveAndTargetedSupports.AdditionalTargetedSupportAndImprovementStatusEDFactsCode
		, DimComprehensiveAndTargetedSupports.ComprehensiveSupportAndImprovementStatusCode
		, DimComprehensiveAndTargetedSupports.ComprehensiveSupportAndImprovementStatusDescription
		, DimComprehensiveAndTargetedSupports.ComprehensiveSupportAndImprovementStatusEdFactsCode
		, DimComprehensiveAndTargetedSupports.TargetedSupportAndImprovementStatusCode
		, DimComprehensiveAndTargetedSupports.TargetedSupportAndImprovementStatusDescription
		, DimComprehensiveAndTargetedSupports.TargetedSupportAndImprovementStatusEdFactsCode
		, DimCharterSchoolStatus.AppropriationMethodCode
		, DimCharterSchoolStatus.AppropriationMethodDescription
		, DimCharterSchoolStatus.AppropriationMethodEdFactsCode
		, DimSubgroups.SubgroupCode
		, DimSubgroups.SubgroupDescription
		, DimSubgroups.SubgroupEdFactsCode
		, DimComprehensiveSupportReasonApplicabilities.ComprehensiveSupportReasonApplicabilityCode
		, DimComprehensiveSupportReasonApplicabilities.ComprehensiveSupportReasonApplicabilityDescription
		, DimComprehensiveSupportReasonApplicabilities.ComprehensiveSupportReasonApplicabilityEdFactsCode
	FROM RDS.FactOrganizationCounts fact
	JOIN RDS.DimSchoolYears DimSchoolYears
		ON Fact.SchoolYearId = DimSchoolYears.DimSchoolYearId
	JOIN RDS.DimFactTypes DimFactTypes
		ON Fact.FactTypeId = DimFactTypes.DimFactTypeId
	JOIN RDS.DimLeas DimLeas
		ON Fact.LeaId = DimLeas.DimLeaId
	JOIN RDS.DimK12Staff DimK12Staff
		ON Fact.K12StaffId = DimK12Staff.DimK12StaffId
	JOIN RDS.DimK12Schools DimK12Schools
		ON Fact.K12SchoolId = DimK12Schools.DimK12SchoolId
	JOIN RDS.DimK12SchoolStatuses DimK12SchoolStatuses
		ON Fact.SchoolStatusId = DimK12SchoolStatuses.DimK12SchoolStatusId
	JOIN RDS.DimSeas DimSeas
		ON Fact.SeaId = DimSeas.DimSeaId
	JOIN RDS.DimTitleIStatuses DimTitleIStatuses
		ON Fact.TitleIStatusId = DimTitleIStatuses.DimTitleIStatusId
	JOIN RDS.DimCharterSchoolAuthorizers DimCharterSchoolAuthorizers
		ON Fact.CharterSchoolApproverAgencyId = DimCharterSchoolAuthorizers.DimCharterSchoolAuthorizerId
	JOIN RDS.DimCharterSchoolManagementOrganizations DimCharterSchoolManagementOrganizations
		ON Fact.CharterSchoolManagerOrganizationId = DimCharterSchoolManagementOrganizations.DimCharterSchoolManagementOrganizationId
	JOIN RDS.DimCharterSchoolAuthorizers DimCharterSchoolSecondaryAuthorizers
		ON Fact.CharterSchoolSecondaryApproverAgencyId = DimCharterSchoolAuthorizers.DimCharterSchoolAuthorizerId
	JOIN RDS.DimCharterSchoolManagementOrganizations DimCharterSchoolUpdatedManagementOrganizations
		ON Fact.CharterSchoolUpdatedManagerOrganizationId = DimCharterSchoolManagementOrganizations.DimCharterSchoolManagementOrganizationId
	JOIN RDS.DimK12OrganizationStatuses DimK12OrganizationStatuses
		ON Fact.OrganizationStatusId = DimK12OrganizationStatuses.DimK12OrganizationStatusId
	JOIN RDS.DimK12SchoolStateStatuses DimK12SchoolStateStatuses
		ON Fact.SchoolStateStatusId = DimK12SchoolStateStatuses.DimK12SchoolStateStatusId
	JOIN RDS.DimComprehensiveAndTargetedSupports DimComprehensiveAndTargetedSupports
		ON Fact.ComprehensiveAndTargetedSupportId = DimComprehensiveAndTargetedSupports.DimComprehensiveAndTargetedSupportId
	JOIN RDS.DimCharterSchoolStatus DimCharterSchoolStatus
		ON Fact.CharterSchoolStatusId = DimCharterSchoolStatus.DimCharterSchoolStatusId
	JOIN RDS.DimSubgroups DimSubgroups
		ON Fact.DimSubgroupId = DimSubgroups.DimSubgroupId
	JOIN RDS.DimComprehensiveSupportReasonApplicabilities DimComprehensiveSupportReasonApplicabilities
		ON Fact.DimComprehensiveSupportReasonApplicabilityId = DimComprehensiveSupportReasonApplicabilities.DimComprehensiveSupportReasonApplicabilityId
