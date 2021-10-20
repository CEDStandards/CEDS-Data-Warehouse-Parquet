/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
	  StudentCount
	, StudentCutOverStartDate	
	, AgeCode	
	, AgeDescription	
	, AgeEdFactsCode	
	, AgeValue	
	, SchoolYear	
	, SessionBeginDate	
	, SessionEndDate	
	, EconomicDisadvantageStatusCode	
	, EconomicDisadvantageStatusDescription	
	, EconomicDisadvantageStatusEdFactsCode	
	, HomelessnessStatusCode	
	, HomelessnessStatusDescription	
	, HomelessnessStatusEdFactsCode	
	, EnglishLearnerStatusCode	
	, EnglishLearnerStatusDescription	
	, EnglishLearnerStatusEdFactsCode	
	, MigrantStatusCode	
	, MigrantStatusDescription	
	, MigrantStatusEdFactsCode	
	, MilitaryConnectedStudentIndicatorCode	
	, MilitaryConnectedStudentIndicatorDescription	
	, MilitaryConnectedStudentIndicatorEdFactsCode	
	, HomelessPrimaryNighttimeResidenceCode	
	, HomelessPrimaryNighttimeResidenceDescription	
	, HomelessPrimaryNighttimeResidenceEdFactsCode	
	, HomelessUnaccompaniedYouthStatusCode	
	, HomelessUnaccompaniedYouthStatusDescription	
	, HomelessUnaccompaniedYouthStatusEdFactsCode	
	, FactTypeCode	
	, FactTypeDescription	
	, GradeLevelCode	
	, GradeLevelDescription	
	, GradeLevelEdFactsCode	
	, SpecialEducationExitReasonCode	
	, SpecialEducationExitReasonDescription	
	, SpecialEducationExitReasonEdFactsCode	
	, PrimaryDisabilityTypeCode	
	, PrimaryDisabilityTypeDescription	
	, PrimaryDisabilityTypeEdFactsCode	
	, IdeaEducationalEnvironmentCode	
	, IdeaEducationalEnvironmentDescription	
	, IdeaEducationalEnvironmentEdFactsCode	
	, IdeaIndicatorCode	
	, IdeaIndicatorDescription	
	, IdeaIndicatorEdFactsCode	
	, EligibilityStatusForSchoolFoodServiceProgramCode	
	, EligibilityStatusForSchoolFoodServiceProgramDescription	
	, EligibilityStatusForSchoolFoodServiceProgramEdFactsCode	
	, FosterCareProgramCode	
	, FosterCareProgramDescription	
	, FosterCareProgramEdFactsCode	
	, TitleIIIImmigrantParticipationStatusCode	
	, TitleIIIImmigrantParticipationStatusDescription	
	, TitleIIIImmigrantParticipationStatusEdFactsCode	
	, Section504StatusCode	
	, Section504StatusDescription	
	, Section504StatusEdFactsCode	
	, TitleiiiProgramParticipationCode	
	, TitleiiiProgramParticipationDescription	
	, TitleiiiProgramParticipationEdFactsCode	
	, HomelessServicedIndicatorCode	
	, HomelessServicedIndicatorDescription	
	, HomelessServicedIndicatorEdFactsCode	
	, sch.LeaName								   AS School_LeaName	
	, sch.LeaIdentifierNces						   AS School_LeaIdentifierNces	
	, sch.LeaIdentifierState					   AS School_LeaIdentifierState	
	, sch.NameOfInstitution						   AS School_NameOfInstitution	
	, sch.SchoolIdentifierNces					   AS School_SchoolIdentifierNces	
	, sch.SchoolIdentifierState					   AS School_SchoolIdentifierState	
	, sch.SeaName								   AS School_SeaName	
	, sch.SeaIdentifierState					   AS School_SeaIdentifierState	
	, sch.StateAnsiCode							   AS School_StateAnsiCode	
	, sch.StateAbbreviationCode					   AS School_StateAbbreviationCode	
	, sch.StateAbbreviationDescription			   AS School_StateAbbreviationDescription	
	, sch.CharterSchoolAuthorizerIdPrimary		   	
	, sch.CharterSchoolAuthorizerIdSecondary	   	
	, sch.OperationalStatusEffectiveDate		   AS School_OperationalStatusEffectiveDate	
	, sch.PriorLeaIdentifierState				   AS School_PriorLeaIdentifierState	
	, sch.PriorSchoolIdentifierState			   AS School_PriorSchoolIdentifierState	
	, sch.CharterSchoolIndicator				   	
	, sch.CharterSchoolContractIdNumber			   	
	, sch.CharterSchoolContractApprovalDate		   	
	, sch.CharterSchoolContractRenewalDate		   	
	, sch.ReportedFederally						   AS School_ReportedFederally	
	, sch.LeaTypeCode							   AS School_LeaTypeCode	
	, sch.LeaTypeDescription					   AS School_LeaTypeDescription	
	, sch.LeaTypeEdFactsCode					   AS School_LeaTypeEdFactsCode	
	, sch.SchoolTypeCode						   AS School_SchoolTypeCode	
	, sch.SchoolTypeDescription					   AS School_SchoolTypeDescription	
	, sch.SchoolTypeEdFactsCode					   AS School_SchoolTypeEdFactsCode	
	, sch.MailingAddressCity					   AS School_MailingAddressCity	
	, sch.MailingAddressPostalCode				   AS School_MailingAddressPostalCode	
	, sch.MailingAddressState					   AS School_MailingAddressState	
	, sch.MailingAddressStreet					   AS School_MailingAddressStreet	
	, sch.PhysicalAddressCity					   AS School_PhysicalAddressCity	
	, sch.PhysicalAddressPostalCode				   AS School_PhysicalAddressPostalCode	
	, sch.PhysicalAddressState					   AS School_PhysicalAddressState	
	, sch.PhysicalAddressStreet					   AS School_PhysicalAddressStreet	
	, sch.Telephone								   AS School_Telephone	
	, sch.Website								   AS School_Website	
	, sch.OutOfStateIndicator					   AS School_OutOfStateIndicator	
	, sch.RecordStartDateTime					   AS School_RecordStartDateTime	
	, sch.RecordEndDateTime						   AS School_RecordEndDateTime	
	, sch.SchoolOperationalStatus				   
	, sch.SchoolOperationalStatusEdFactsCode	   	
	, sch.CharterSchoolStatus					   
	, sch.ReconstitutedStatus					   AS School_ReconstitutedStatus
	, sch.MailingAddressStreet2					   AS School_MailingAddressStreet2	
	, sch.PhysicalAddressStreet2				   AS School_PhysicalAddressStreet2	
	, sch.IeuName								   AS School_IeuName	
	, sch.IeuIdentifierState					   AS School_IeuIdentifierState	
	, sch.MailingCountyAnsiCode					   AS School_MailingCountyAnsiCode	
	, sch.PhysicalCountyAnsiCode				   AS School_PhysicalCountyAnsiCode	
	, sch.Longitude								   AS School_Longitude	
	, sch.Latitude								   AS School_Latitude	
	, sch.SchoolOperationalStatusEffectiveDate	   AS School_SchoolOperationalStatusEffectiveDate	
	, sch.AdministrativeFundingControlCode		   	
	, sch.AdministrativeFundingControlDescription 	
	, BirthDate	
	, Cohort	
	, FirstName	
	, LastName	
	, MiddleName	
	, StateStudentIdentifier	
	, stu.RecordStartDateTime	
	, stu.RecordEndDateTime	
	, SexCode	
	, SexDescription	
	, SexEdFactsCode	
	, Iso6392LanguageCode	
	, Iso6392LanguageDescription	
	, Iso6392LanguageEdFactsCode	
	, ContinuationOfServicesReasonCode	
	, ContinuationOfServicesReasonDescription	
	, ContinuationOfServicesReasonEdFactsCode	
	, ConsolidatedMepFundsStatusCode	
	, ConsolidatedMepFundsStatusDescription	
	, ConsolidatedMepFundsStatusEdFactsCode	
	, MepServicesTypeCode	
	, MepServicesTypeDescription	
	, MepServicesTypeEdFactsCode	
	, MigrantPrioritizedForServicesCode	
	, MigrantPrioritizedForServicesDescription	
	, MigrantPrioritizedForServicesEdFactsCode	
	, MepEnrollmentTypeCode	
	, MepEnrollmentTypeDescription	
	, MepEnrollmentTypeEdFactsCode	
	, HighSchoolDiplomaTypeCode	
	, HighSchoolDiplomaTypeDescription	
	, HighSchoolDiplomaTypeEdFactsCode	
	, MobilityStatus12moCode	
	, MobilityStatus12moDescription	
	, MobilityStatus12moEdFactsCode	
	, MobilityStatusSYCode	
	, MobilityStatusSYDescription	
	, MobilityStatusSYEdFactsCode	
	, ReferralStatusCode	
	, ReferralStatusDescription	
	, ReferralStatusEdFactsCode	
	, MobilityStatus36moCode	
	, MobilityStatus36moDescription	
	, MobilityStatus36moEdFactsCode	
	, PlacementStatusCode	
	, PlacementStatusDescription	
	, PlacementStatusEdFactsCode	
	, PlacementTypeCode	
	, PlacementTypeDescription	
	, PlacementTypeEdFactsCode	
	, NSLPDirectCertificationIndicatorCode	
	, NSLPDirectCertificationIndicatorDescription	
	, NSLPDirectCertificationIndicatorEdFactsCode	
	, TitleIInstructionalServicesCode	
	, TitleIInstructionalServicesDescription	
	, TitleIInstructionalServicesEdFactsCode	
	, TitleIProgramTypeCode	
	, TitleIProgramTypeDescription	
	, TitleIProgramTypeEdFactsCode	
	, TitleISchoolStatusCode	
	, TitleISchoolStatusDescription	
	, TitleISchoolStatusEdFactsCode	
	, TitleISupportServicesCode	
	, TitleISupportServicesDescription	
	, TitleISupportServicesEdFactsCode	
	, FormerEnglishLearnerYearStatusCode	
	, FormerEnglishLearnerYearStatusDescription	
	, FormerEnglishLearnerYearStatusEdFactsCode	
	, ProficiencyStatusCode	
	, ProficiencyStatusDescription	
	, ProficiencyStatusEdFactsCode	
	, TitleiiiAccountabilityProgressStatusCode	
	, TitleiiiAccountabilityProgressStatusDescription	
	, TitleiiiAccountabilityProgressStatusEdFactsCode	
	, TitleiiiLanguageInstructionCode	
	, TitleiiiLanguageInstructionDescription	
	, TitleiiiLanguageInstructionEdFactsCode	
	, lea.OperationalStatusEffectiveDate		   AS LEA_OperationalStatusEffectiveDate	
	, lea.LeaName								   AS LEA_LeaName	
	, lea.LeaIdentifierNces						   AS LEA_LeaIdentifierNces	
	, lea.LeaIdentifierState					   AS LEA_LeaIdentifierState	
	, lea.PriorLeaIdentifierState				   AS LEA_PriorLeaIdentifierState	
	, lea.SeaName								   AS LEA_SeaName	
	, lea.SeaIdentifierState					   AS LEA_SeaIdentifierState	
	, lea.StateAnsiCode							   AS LEA_StateAnsiCode	
	, lea.StateAbbreviationCode					   AS LEA_StateAbbreviationCode	
	, lea.StateAbbreviationDescription			   AS LEA_StateAbbreviationDescription	
	, lea.LeaSupervisoryUnionIdentificationNumber  AS LEA_LeaSupervisoryUnionIdentificationNumber
	, lea.ReportedFederally						   AS LEA_ReportedFederally	
	, lea.LeaTypeCode							   AS LEA_LeaTypeCode	
	, lea.LeaTypeDescription					   AS LEA_LeaTypeDescription	
	, lea.LeaTypeEdFactsCode					   AS LEA_LeaTypeEdFactsCode	
	, lea.MailingAddressCity					   AS LEA_MailingAddressCity	
	, lea.MailingAddressPostalCode				   AS LEA_MailingAddressPostalCode	
	, lea.MailingAddressState					   AS LEA_MailingAddressState	
	, lea.MailingAddressStreet					   AS LEA_MailingAddressStreet	
	, lea.PhysicalAddressCity					   AS LEA_PhysicalAddressCity	
	, lea.PhysicalAddressPostalCode				   AS LEA_PhysicalAddressPostalCode	
	, lea.PhysicalAddressState					   AS LEA_PhysicalAddressState	
	, lea.PhysicalAddressStreet					   AS LEA_PhysicalAddressStreet	
	, lea.Telephone								   AS LEA_Telephone	
	, lea.Website								   AS LEA_Website	
	, lea.OutOfStateIndicator					   AS LEA_OutOfStateIndicator	
	, lea.RecordStartDateTime					   AS LEA_RecordStartDateTime	
	, lea.RecordEndDateTime						   AS LEA_RecordEndDateTime	
	, lea.LeaOperationalStatus					  
	, lea.LeaOperationalStatusEdFactsCode		 	
	, lea.CharterLeaStatus						  
	, lea.ReconstitutedStatus					   AS LEA_ReconstitutedStatus	
	, lea.MailingAddressStreet2					   AS LEA_MailingAddressStreet2	
	, lea.PhysicalAddressStreet2				   AS LEA_PhysicalAddressStreet2	
	, lea.McKinneyVentoSubgrantRecipient		   
	, lea.IeuName								   AS LEA_IeuName	
	, lea.IeuStateIdentifier					   AS LEA_IeuStateIdentifier	
	, lea.NameOfInstitution						   AS LEA_NameOfInstitution	
	, lea.MailingCountyAnsiCode					   AS LEA_MailingCountyAnsiCode	
	, lea.PhysicalCountyAnsiCode				   AS LEA_PhysicalCountyAnsiCode	
	, lea.Longitude								   AS LEA_Longitude	
	, lea.Latitude								   AS LEA_Latitude	
	, lea.EffectiveDate							   AS LEA_EffectiveDate	
	, AbsenteeismCode	
	, AbsenteeismDescription	
	, AbsenteeismEdFactsCode	
	, CohortStatusCode	
	, CohortStatusDescription	
	, CohortStatusEdFactsCode	
	, LongTermStatusCode	
	, LongTermStatusDescription	
	, LongTermStatusEdFactsCode	
	, NeglectedOrDelinquentProgramTypeCode	
	, NeglectedOrDelinquentProgramTypeDescription	
	, NeglectedOrDelinquentProgramTypeEdFactsCode	
	, RaceCode	
	, RaceDescription	
	, RaceEdFactsCode	
	, CteProgramCode	
	, CteProgramDescription	
	, CteProgramEdFactsCode	
	, CteAeDisplacedHomemakerIndicatorCode	
	, CteAeDisplacedHomemakerIndicatorDescription	
	, CteAeDisplacedHomemakerIndicatorEdFactsCode	
	, CteNontraditionalGenderStatusCode	
	, CteNontraditionalGenderStatusDescription	
	, CteNontraditionalGenderStatusEdFactsCode	
	, RepresentationStatusCode	
	, RepresentationStatusDescription	
	, RepresentationStatusEdFactsCode	
	, SingleParentOrSinglePregnantWomanCode	
	, SingleParentOrSinglePregnantWomanDescription	
	, SingleParentOrSinglePregnantWomanEdFactsCode	
	, CteGraduationRateInclusionCode	
	, CteGraduationRateInclusionDescription	
	, CteGraduationRateInclusionEdFactsCode	
	, LepPerkinsStatusCode
	, LepPerkinsStatusDescription	
	, LepPerkinsStatusEdFactsCode	
	, EnrollmentStatusCode	
	, EnrollmentStatusDescription	
	, EntryTypeCode	
	, EntryTypeDescription	
	, ExitOrWithdrawalTypeCode	
	, ExitOrWithdrawalTypeDescription	
	, PostSecondaryEnrollmentStatusCode	
	, PostSecondaryEnrollmentStatusDescription	
	, PostSecondaryEnrollmentStatusEdFactsCode	
	, AcademicOrVocationalOutcomeCode	
	, AcademicOrVocationalOutcomeDescription	
	, AcademicOrVocationalOutcomeEdFactsCode	
	, AcademicOrVocationalExitOutcomeCode	
	, AcademicOrVocationalExitOutcomeDescription	
	, AcademicOrVocationalExitOutcomeEdFactsCode	
	, sea.SeaName							 AS SEA_SeaName	
	, sea.SeaIdentifierState				 AS SEA_SeaIdentifierState	
	, sea.StateAnsiCode						 AS SEA_StateAnsiCode	
	, sea.StateAbbreviationCode				 AS SEA_StateAbbreviationCode	
	, sea.StateAbbreviationDescription		 AS SEA_StateAbbreviationDescription	
	, sea.MailingAddressCity				 AS SEA_MailingAddressCity	
	, sea.MailingAddressPostalCode			 AS SEA_MailingAddressPostalCode	
	, sea.MailingAddressState				 AS SEA_MailingAddressState	
	, sea.MailingAddressStreet				 AS SEA_MailingAddressStreet	
	, sea.PhysicalAddressCity				 AS SEA_PhysicalAddressCity	
	, sea.PhysicalAddressPostalCode			 AS SEA_PhysicalAddressPostalCode	
	, sea.PhysicalAddressState				 AS SEA_PhysicalAddressState	
	, sea.PhysicalAddressStreet				 AS SEA_PhysicalAddressStreet	
	, sea.Telephone							 AS SEA_Telephone	
	, sea.Website							 AS SEA_Website	
	, sea.RecordStartDateTime				 AS SEA_RecordStartDateTime	
	, sea.RecordEndDateTime					 AS SEA_RecordEndDateTime	
	, sea.MailingAddressStreet2				 AS SEA_MailingAddressStreet2	
	, sea.PhysicalAddressStreet2			 AS SEA_PhysicalAddressStreet2	
	, sea.MailingCountyAnsiCode				 AS SEA_MailingCountyAnsiCode	
	, sea.PhysicalCountyAnsiCode			 AS SEA_PhysicalCountyAnsiCode	
	, ieu.IeuName							 AS IEU_IeuName	
	, ieu.IeuIdentifierState				 AS IEU_IeuIdentifierState	
	, ieu.SeaName							 AS IEU_SeaName	
	, ieu.SeaStateIdentifier				 AS IEU_SeaStateIdentifier	
	, ieu.StateANSICode						 AS IEU_StateANSICode	
	, ieu.StateCode							 AS IEU_StateCode	
	, ieu.StateName							 AS IEU_StateName	
	, ieu.MailingAddressStreet				 AS IEU_MailingAddressStreet	
	, ieu.MailingAddressCity				 AS IEU_MailingAddressCity	
	, ieu.MailingAddressState				 AS IEU_MailingAddressState	
	, ieu.MailingAddressPostalCode			 AS IEU_MailingAddressPostalCode	
	, ieu.MailingCountyAnsiCode				 AS IEU_MailingCountyAnsiCode	
	, ieu.OutOfStateIndicator				 AS IEU_OutOfStateIndicator	
	, ieu.OrganizationOperationalStatus		 AS IEU_OrganizationOperationalStatus	
	, ieu.OperationalStatusEffectiveDate	 AS IEU_OperationalStatusEffectiveDate	
	, ieu.PhysicalAddressStreet				 AS IEU_PhysicalAddressStreet	
	, ieu.PhysicalAddressCity				 AS IEU_PhysicalAddressCity	
	, ieu.PhysicalAddressPostalCode			 AS IEU_PhysicalAddressPostalCode	
	, ieu.PhysicalAddressState				 AS IEU_PhysicalAddressState	
	, ieu.PhysicalCountyAnsiCode			 AS IEU_PhysicalCountyAnsiCode	
	, ieu.Telephone							 AS IEU_Telephone	
	, ieu.Website							 AS IEU_Website	
	, ieu.OrganizationRegionGeoJson			 AS IEU_OrganizationRegionGeoJson	
	, ieu.Latitude							 AS IEU_Latitude	
	, ieu.Longitude							 AS IEU_Longitude	
	, ieu.RecordStartDateTime				 AS IEU_RecordStartDateTime	
	, ieu.RecordEndDateTime					 AS IEU_RecordEndDateTime	
	, SpecialEducationServicesExitDates.DateValue		  AS SpecialEducationServicesExitDateValue
	, SpecialEducationServicesExitDates.Day				  AS SpecialEducationServicesExitDateDay
	, SpecialEducationServicesExitDates.DayOfWeek		  AS SpecialEducationServicesExitDateDayOfWeek
	, SpecialEducationServicesExitDates.DayOfYear		  AS SpecialEducationServicesExitDateDayOfYear
	, SpecialEducationServicesExitDates.Month			  AS SpecialEducationServicesExitDateMonth
	, SpecialEducationServicesExitDates.MonthName		  AS SpecialEducationServicesExitDateMonthName
	, SpecialEducationServicesExitDates.SubmissionYear	  AS SpecialEducationServicesExitDateSubmissionYear
	, SpecialEducationServicesExitDates.Year			  AS SpecialEducationServicesExitDateYear
FROM [generate-stage].[RDS].[FactK12StudentCounts] f
JOIN RDS.DimAges a ON f.AgeId = a.DimAgeId
JOIN RDS.DimSchoolYears sy ON f.SchoolYearId = sy.DimSchoolYearId
JOIN RDS.DimK12Demographics d ON f.K12DemographicId = d.DimK12DemographicId
JOIN RDS.DimFactTypes ft ON f.FactTypeId = ft.DimFactTypeId
JOIN RDS.DimGradeLevels gl ON f.GradeLevelId = gl.DimGradeLevelId
JOIN RDS.DimIdeaStatuses i on f.IdeaStatusId = i.DimIdeaStatusId
JOIN RDS.DimProgramStatuses ps on f.ProgramStatusId = ps.DimProgramStatusId
JOIN RDS.DimK12Schools sch on f.K12SchoolId = sch.DimK12SchoolId
JOIN RDS.DimK12Students stu on f.K12StudentId = stu.DimK12StudentId
JOIN RDS.DimLanguages l on f.LanguageId = l.DimLanguageId
JOIN RDS.DimMigrants m on f.MigrantId = m.DimMigrantId
JOIN RDS.DimK12StudentStatuses ss on f.K12StudentStatusId = ss.DimK12StudentStatusId
JOIN RDS.DimTitleIStatuses ti on f.TitleIStatusId = ti.DimTitleIStatusId
JOIN RDS.DimTitleIIIStatuses tiii on f.TitleIIIStatusId = tiii.DimTitleIIIStatusId
JOIN RDS.DimLeas lea on f.LeaId = lea.DimLeaID
JOIN RDS.DimAttendance att on f.AttendanceId = att.DimAttendanceId
JOIN RDS.DimCohortStatuses cs on f.CohortStatusId = cs.DimCohortStatusId
JOIN RDS.DimNOrDProgramStatuses nord on f.NOrDProgramStatusId = nord.DimNOrDProgramStatusId
JOIN RDS.DimRaces r on f.RaceId = r.DimRaceId
JOIN RDS.DimCteStatuses cte on f.CteStatusId = cte.DimCteStatusId
JOIN RDS.DimK12EnrollmentStatuses enr on f.K12EnrollmentStatusId = enr.DimK12EnrollmentStatusId
JOIN RDS.DimSeas sea on f.SeaId = sea.DimSeaId
LEFT JOIN RDS.DimIeus ieu on f.IeuId = ieu.DimIeuId
JOIN RDS.DimDates AS SpecialEducationServicesExitDates on f.SpecialEducationServicesExitDateId = SpecialEducationServicesExitDates.DimDateId
