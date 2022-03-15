CREATE VIEW RDS.vwParquetFactK12StudentEnrollments AS

	SELECT fact.FactK12StudentEnrollmentId
		, DimSchoolYears.SchoolYear
		, DimSchoolYears.SessionBeginDate
		, DimSchoolYears.SessionEndDate
		, DimDataCollections.SourceSystemDataCollectionIdentifier
		, DimDataCollections.SourceSystemName
		, DimDataCollections.DataCollectionName
		, DimDataCollections.DataCollectionDescription
		, DimDataCollections.DataCollectionOpenDate
		, DimDataCollections.DataCollectionCloseDate
		, DimDataCollections.DataCollectionAcademicSchoolYear
		, DimDataCollections.DataCollectionSchoolYear
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
		, DimIeus.IeuOrganizationName AS Ieus_IeuOrganizationName
		, DimIeus.IeuOrganizationIdentifierSea AS Ieus_IeuOrganizationIdentifierSea
		, DimIeus.SeaOrganizationName AS Ieus_SeaOrganizationName
		, DimIeus.SeaIdentifierSea AS Ieus_SeaIdentifierSea
		, DimIeus.StateANSICode AS Ieus_StateANSICode
		, DimIeus.StateAbbreviationCode AS Ieus_StateAbbreviationCode
		, DimIeus.StateAbbreviationDescription AS Ieus_StateAbbreviationDescription
		, DimIeus.MailingAddressStreetNumberAndName AS Ieus_MailingAddressStreetNumberAndName
		, DimIeus.MailingAddressCity AS Ieus_MailingAddressCity
		, DimIeus.MailingAddressStateAbbreviation AS Ieus_MailingAddressStateAbbreviation
		, DimIeus.MailingAddressPostalCode AS Ieus_MailingAddressPostalCode
		, DimIeus.MailingAddressCountyAnsiCode AS Ieus_MailingAddressCountyAnsiCode
		, DimIeus.OutOfStateIndicator AS Ieus_OutOfStateIndicator
		, DimIeus.OrganizationOperationalStatus AS Ieus_OrganizationOperationalStatus
		, DimIeus.OperationalStatusEffectiveDate AS Ieus_OperationalStatusEffectiveDate
		, DimIeus.PhysicalAddressStreetNumberAndName AS Ieus_PhysicalAddressStreetNumberAndName
		, DimIeus.PhysicalAddressCity AS Ieus_PhysicalAddressCity
		, DimIeus.PhysicalAddressPostalCode AS Ieus_PhysicalAddressPostalCode
		, DimIeus.PhysicalAddressStateAbbreviation AS Ieus_PhysicalAddressStateAbbreviation
		, DimIeus.PhysicalAddressCountyAnsiCode AS Ieus_PhysicalAddressCountyAnsiCode
		, DimIeus.TelephoneNumber AS Ieus_TelephoneNumber
		, DimIeus.WebSiteAddress AS Ieus_WebSiteAddress
		, DimIeus.OrganizationRegionGeoJson AS Ieus_OrganizationRegionGeoJson
		, DimIeus.Latitude AS Ieus_Latitude
		, DimIeus.Longitude AS Ieus_Longitude
		, DimIeus.RecordStartDateTime AS Ieus_RecordStartDateTime
		, DimIeus.RecordEndDateTime AS Ieus_RecordEndDateTime
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
		, DimK12Students.BirthDate
		, DimK12Students.Cohort
		, DimK12Students.FirstName
		, DimK12Students.LastOrSurname
		, DimK12Students.MiddleName
		, DimK12Students.StudentIdentifierState
		, DimK12Students.RecordStartDateTime
		, DimK12Students.RecordEndDateTime
		, DimPersonAddresses.AddressTypeForLearnerOrFamilyCode
		, DimPersonAddresses.AddressTypeForLearnerOrFamilyDescription
		, DimPersonAddresses.AddressStreetNumberAndName
		, DimPersonAddresses.AddressApartmentRoomOrSuiteNumber
		, DimPersonAddresses.AddressCity
		, DimPersonAddresses.StateAbbreviationCode
		, DimPersonAddresses.StateAbbreviationDescription
		, DimPersonAddresses.AddressPostalCode
		, DimPersonAddresses.AddressCountyName
		, DimPersonAddresses.CountryCode
		, DimPersonAddresses.CountryDescription
		, DimPersonAddresses.Latitude
		, DimPersonAddresses.Longitude
		, DimPersonAddresses.CountyAnsiCode
		, DimPersonAddresses.CountyAnsiDescription
		, DimPersonAddresses.DoNotPublishIndicator
		, DimPersonAddresses.PersonalInformationVerificationCode
		, DimPersonAddresses.PersonalInformationVerificationDescription
		, DimK12EnrollmentStatuses.EnrollmentStatusCode
		, DimK12EnrollmentStatuses.EnrollmentStatusDescription
		, DimK12EnrollmentStatuses.EntryTypeCode
		, DimK12EnrollmentStatuses.EntryTypeDescription
		, DimK12EnrollmentStatuses.ExitOrWithdrawalTypeCode
		, DimK12EnrollmentStatuses.ExitOrWithdrawalTypeDescription
		, DimK12EnrollmentStatuses.PostSecondaryEnrollmentStatusCode
		, DimK12EnrollmentStatuses.PostSecondaryEnrollmentStatusDescription
		, DimK12EnrollmentStatuses.PostSecondaryEnrollmentStatusEdFactsCode
		, DimK12EnrollmentStatuses.EdFactsAcademicOrCareerAndTechnicalOutcomeTypeCode
		, DimK12EnrollmentStatuses.EdFactsAcademicOrCareerAndTechnicalOutcomeTypeDescription
		, DimK12EnrollmentStatuses.EdFactsAcademicOrCareerAndTechnicalOutcomeTypeEdFactsCode
		, DimK12EnrollmentStatuses.EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeCode
		, DimK12EnrollmentStatuses.EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeDescription
		, DimK12EnrollmentStatuses.EdFactsAcademicOrCareerAndTechnicalOutcomeExitTypeEdFactsCode
		, DimEntryGradeLevels.GradeLevelCode		AS EntryGradeLevelCode
		, DimEntryGradeLevels.GradeLevelDescription	AS EntryGradeLevelDescription
		, DimEntryGradeLevels.GradeLevelEdFactsCode	AS EntryGradeLevelEdFactsCode
		, DimExitGradeLevels.GradeLevelCode			AS ExitGradeLevelCode
		, DimExitGradeLevels.GradeLevelDescription	AS ExitGradeLevelDescription
		, DimExitGradeLevels.GradeLevelEdFactsCode	AS ExitGradeLevelEdFactsCode
		, EnrollmentEntryDate.DateValue AS EnrollmentEntryDate_DateValue
		, EnrollmentEntryDate.Day AS EnrollmentEntryDate_Day
		, EnrollmentEntryDate.DayOfWeek AS EnrollmentEntryDate_DayOfWeek
		, EnrollmentEntryDate.DayOfYear AS EnrollmentEntryDate_DayOfYear
		, EnrollmentEntryDate.Month AS EnrollmentEntryDate_Month
		, EnrollmentEntryDate.MonthName AS EnrollmentEntryDate_MonthName
		, EnrollmentEntryDate.SubmissionYear AS EnrollmentEntryDate_SubmissionYear
		, EnrollmentEntryDate.Year AS EnrollmentEntryDate_Year
		, EnrollmentExitDate.DateValue AS EnrollmentExitDate_DateValue
		, EnrollmentExitDate.Day AS EnrollmentExitDate_Day
		, EnrollmentExitDate.DayOfWeek AS EnrollmentExitDate_DayOfWeek
		, EnrollmentExitDate.DayOfYear AS EnrollmentExitDate_DayOfYear
		, EnrollmentExitDate.Month AS EnrollmentExitDate_Month
		, EnrollmentExitDate.MonthName AS EnrollmentExitDate_MonthName
		, EnrollmentExitDate.SubmissionYear AS EnrollmentExitDate_SubmissionYear
		, EnrollmentExitDate.Year AS EnrollmentExitDate_Year
		, ProjectedGraduationDate.DateValue AS ProjectedGraduationDate_DateValue
		, ProjectedGraduationDate.Day AS ProjectedGraduationDate_Day
		, ProjectedGraduationDate.DayOfWeek AS ProjectedGraduationDate_DayOfWeek
		, ProjectedGraduationDate.DayOfYear AS ProjectedGraduationDate_DayOfYear
		, ProjectedGraduationDate.Month AS ProjectedGraduationDate_Month
		, ProjectedGraduationDate.MonthName AS ProjectedGraduationDate_MonthName
		, ProjectedGraduationDate.SubmissionYear AS ProjectedGraduationDate_SubmissionYear
		, ProjectedGraduationDate.Year AS ProjectedGraduationDate_Year
		, DimK12Demographics.EconomicDisadvantageStatusCode
		, DimK12Demographics.EconomicDisadvantageStatusDescription
		, DimK12Demographics.EconomicDisadvantageStatusEdFactsCode
		, DimK12Demographics.HomelessnessStatusCode
		, DimK12Demographics.HomelessnessStatusDescription
		, DimK12Demographics.HomelessnessStatusEdFactsCode
		, DimK12Demographics.EnglishLearnerStatusCode
		, DimK12Demographics.EnglishLearnerStatusDescription
		, DimK12Demographics.EnglishLearnerStatusEdFactsCode
		, DimK12Demographics.MigrantStatusCode
		, DimK12Demographics.MigrantStatusDescription
		, DimK12Demographics.MigrantStatusEdFactsCode
		, DimK12Demographics.MilitaryConnectedStudentIndicatorCode
		, DimK12Demographics.MilitaryConnectedStudentIndicatorDescription
		, DimK12Demographics.MilitaryConnectedStudentIndicatorEdFactsCode
		, DimK12Demographics.HomelessPrimaryNighttimeResidenceCode
		, DimK12Demographics.HomelessPrimaryNighttimeResidenceDescription
		, DimK12Demographics.HomelessPrimaryNighttimeResidenceEdFactsCode
		, DimK12Demographics.HomelessUnaccompaniedYouthStatusCode
		, DimK12Demographics.HomelessUnaccompaniedYouthStatusDescription
		, DimK12Demographics.HomelessUnaccompaniedYouthStatusEdFactsCode
		, DimK12Demographics.SexCode
		, DimK12Demographics.SexDescription
		, DimK12Demographics.SexEdFactsCode
		, DimIdeaStatuses.SpecialEducationExitReasonCode
		, DimIdeaStatuses.SpecialEducationExitReasonDescription
		, DimIdeaStatuses.SpecialEducationExitReasonEdFactsCode
		, DimIdeaStatuses.PrimaryDisabilityTypeCode
		, DimIdeaStatuses.PrimaryDisabilityTypeDescription
		, DimIdeaStatuses.PrimaryDisabilityTypeEdFactsCode
		, DimIdeaStatuses.IdeaEducationalEnvironmentForSchoolAgeCode
		, DimIdeaStatuses.IdeaEducationalEnvironmentForSchoolAgeDescription
		, DimIdeaStatuses.IdeaEducationalEnvironmentForSchoolAgeEdFactsCode
		, DimIdeaStatuses.IdeaEducationalEnvironmentForEarlyChildhoodCode
		, DimIdeaStatuses.IdeaEducationalEnvironmentForEarlyChildhoodDescription
		, DimIdeaStatuses.IdeaEducationalEnvironmentForEarlyChildhoodEdFactsCode
		, DimIdeaStatuses.IdeaIndicatorCode
		, DimIdeaStatuses.IdeaIndicatorDescription
		, DimIdeaStatuses.IdeaIndicatorEdFactsCode
		, fact.StudentCount
	FROM RDS.FactK12StudentEnrollments fact
	JOIN RDS.DimSchoolYears DimSchoolYears
		ON Fact.SchoolYearId = DimSchoolYears.DimSchoolYearId
	JOIN RDS.DimDataCollections DimDataCollections
		ON Fact.DataCollectionId = DimDataCollections.DimDataCollectionId
	JOIN RDS.DimSeas DimSeas
		ON Fact.SeaId = DimSeas.DimSeaId
	JOIN RDS.DimIeus DimIeus
		ON Fact.IeuId = DimIeus.DimIeuId
	JOIN RDS.DimLeas DimLeas
		ON Fact.LeaId = DimLeas.DimLeaId
	JOIN RDS.DimK12Schools DimK12Schools
		ON Fact.K12SchoolId = DimK12Schools.DimK12SchoolId
	JOIN RDS.DimK12Students DimK12Students
		ON Fact.K12StudentId = DimK12Students.DimK12StudentId
	JOIN RDS.DimPersonAddresses DimPersonAddresses
		ON Fact.PersonAddressPhysicalId = DimPersonAddresses.DimPersonAddressId
	JOIN RDS.DimK12EnrollmentStatuses DimK12EnrollmentStatuses
		ON Fact.K12EnrollmentStatusId = DimK12EnrollmentStatuses.DimK12EnrollmentStatusId
	JOIN RDS.DimGradeLevels DimEntryGradeLevels
		ON Fact.EntryGradeLevelId = DimEntryGradeLevels.DimGradeLevelId
	JOIN RDS.DimGradeLevels DimExitGradeLevels
		ON Fact.ExitGradeLevelId = DimExitGradeLevels.DimGradeLevelId
	JOIN RDS.DimDates EnrollmentEntryDate
		ON Fact.EnrollmentEntryDateId = EnrollmentEntryDate.DimDateId
	JOIN RDS.DimDates EnrollmentExitDate
		ON Fact.EnrollmentExitDateId = EnrollmentExitDate.DimDateId
	JOIN RDS.DimDates ProjectedGraduationDate
		ON Fact.ProjectedGraduationDateId = ProjectedGraduationDate.DimDateId
	JOIN RDS.DimK12Demographics DimK12Demographics
		ON Fact.K12DemographicId = DimK12Demographics.DimK12DemographicId
	JOIN RDS.DimIdeaStatuses DimIdeaStatuses
		ON Fact.IdeaStatusId = DimIdeaStatuses.DimIdeaStatusId
