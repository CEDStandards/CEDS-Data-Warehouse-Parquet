CREATE OR ALTER VIEW [RDS].[vwFactK12AcademicCalendarEventsParquet] AS
	SELECT fact.FactK12AcademicCalendarEventId
	, SchoolYear.SchoolYear AS SchoolYear_SchoolYear
	, SchoolYear.SessionBeginDate AS SchoolYear_SessionBeginDate
	, SchoolYear.SessionEndDate AS SchoolYear_SessionEndDate
	, CalendarEventDate.DateValue AS CalendarEventDate_DateValue
	, CalendarEventDate.Day AS CalendarEventDate_Day
	, CalendarEventDate.DayOfWeek AS CalendarEventDate_DayOfWeek
	, CalendarEventDate.DayOfYear AS CalendarEventDate_DayOfYear
	, CalendarEventDate.Month AS CalendarEventDate_Month
	, CalendarEventDate.MonthName AS CalendarEventDate_MonthName
	, CalendarEventDate.SubmissionYear AS CalendarEventDate_SubmissionYear
	, CalendarEventDate.Year AS CalendarEventDate_Year
	, StartTime.TimeHour AS StartTime_TimeHour
	, StartTime.TimeMinute AS StartTime_TimeMinute
	, EndTime.TimeHour AS EndTime_TimeHour
	, EndTime.TimeMinute AS EndTime_TimeMinute
	, Sea.SeaOrganizationName AS Sea_SeaOrganizationName
	, Sea.SeaOrganizationIdentifierSea AS Sea_SeaOrganizationIdentifierSea
	, Sea.StateAnsiCode AS Sea_StateAnsiCode
	, Sea.StateAbbreviationCode AS Sea_StateAbbreviationCode
	, Sea.StateAbbreviationDescription AS Sea_StateAbbreviationDescription
	, Sea.MailingAddressCity AS Sea_MailingAddressCity
	, Sea.MailingAddressPostalCode AS Sea_MailingAddressPostalCode
	, Sea.MailingAddressStateAbbreviation AS Sea_MailingAddressStateAbbreviation
	, Sea.MailingAddressStreetNumberAndName AS Sea_MailingAddressStreetNumberAndName
	, Sea.PhysicalAddressCity AS Sea_PhysicalAddressCity
	, Sea.PhysicalAddressPostalCode AS Sea_PhysicalAddressPostalCode
	, Sea.PhysicalAddressStateAbbreviation AS Sea_PhysicalAddressStateAbbreviation
	, Sea.PhysicalAddressStreetNumberAndName AS Sea_PhysicalAddressStreetNumberAndName
	, Sea.TelephoneNumber AS Sea_TelephoneNumber
	, Sea.WebSiteAddress AS Sea_WebSiteAddress
	, Sea.RecordStartDateTime AS Sea_RecordStartDateTime
	, Sea.RecordEndDateTime AS Sea_RecordEndDateTime
	, Sea.MailingAddressApartmentRoomOrSuiteNumber AS Sea_MailingAddressApartmentRoomOrSuiteNumber
	, Sea.PhysicalAddressApartmentRoomOrSuiteNumber AS Sea_PhysicalAddressApartmentRoomOrSuiteNumber
	, Sea.MailingAddressCountyAnsiCodeCode AS Sea_MailingAddressCountyAnsiCodeCode
	, Sea.PhysicalAddressCountyAnsiCodeCode AS Sea_PhysicalAddressCountyAnsiCodeCode
	, Ieu.IeuOrganizationName AS Ieu_IeuOrganizationName
	, Ieu.IeuOrganizationIdentifierSea AS Ieu_IeuOrganizationIdentifierSea
	, Ieu.SeaOrganizationName AS Ieu_SeaOrganizationName
	, Ieu.SeaOrganizationIdentifierSea AS Ieu_SeaOrganizationIdentifierSea
	, Ieu.StateAnsiCode AS Ieu_StateAnsiCode
	, Ieu.StateAbbreviationCode AS Ieu_StateAbbreviationCode
	, Ieu.StateAbbreviationDescription AS Ieu_StateAbbreviationDescription
	, Ieu.MailingAddressStreetNumberAndName AS Ieu_MailingAddressStreetNumberAndName
	, Ieu.MailingAddressApartmentRoomOrSuiteNumber AS Ieu_MailingAddressApartmentRoomOrSuiteNumber
	, Ieu.MailingAddressCity AS Ieu_MailingAddressCity
	, Ieu.MailingAddressStateAbbreviation AS Ieu_MailingAddressStateAbbreviation
	, Ieu.MailingAddressPostalCode AS Ieu_MailingAddressPostalCode
	, Ieu.MailingAddressCountyAnsiCodeCode AS Ieu_MailingAddressCountyAnsiCodeCode
	, Ieu.MailingAddressCountyName AS Ieu_MailingAddressCountyName
	, Ieu.OutOfStateIndicator AS Ieu_OutOfStateIndicator
	, Ieu.OrganizationOperationalStatus AS Ieu_OrganizationOperationalStatus
	, Ieu.OperationalStatusEffectiveDate AS Ieu_OperationalStatusEffectiveDate
	, Ieu.PhysicalAddressStreetNumberAndName AS Ieu_PhysicalAddressStreetNumberAndName
	, Ieu.PhysicalAddressApartmentRoomOrSuiteNumber AS Ieu_PhysicalAddressApartmentRoomOrSuiteNumber
	, Ieu.PhysicalAddressCity AS Ieu_PhysicalAddressCity
	, Ieu.PhysicalAddressPostalCode AS Ieu_PhysicalAddressPostalCode
	, Ieu.PhysicalAddressStateAbbreviation AS Ieu_PhysicalAddressStateAbbreviation
	, Ieu.PhysicalAddressCountyAnsiCodeCode AS Ieu_PhysicalAddressCountyAnsiCodeCode
	, Ieu.PhysicalAddressCountyName AS Ieu_PhysicalAddressCountyName
	, Ieu.TelephoneNumber AS Ieu_TelephoneNumber
	, Ieu.WebSiteAddress AS Ieu_WebSiteAddress
	, Ieu.OrganizationRegionGeoJson AS Ieu_OrganizationRegionGeoJson
	, Ieu.Latitude AS Ieu_Latitude
	, Ieu.Longitude AS Ieu_Longitude
	, Ieu.RecordStartDateTime AS Ieu_RecordStartDateTime
	, Ieu.RecordEndDateTime AS Ieu_RecordEndDateTime
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
	, Lea.ReportedFederally AS Lea_ReportedFederally
	, Lea.LeaTypeCode AS Lea_LeaTypeCode
	, Lea.LeaTypeDescription AS Lea_LeaTypeDescription
	, Lea.LeaTypeEdFactsCode AS Lea_LeaTypeEdFactsCode
	, Lea.MailingAddressStreetNumberAndName AS Lea_MailingAddressStreetNumberAndName
	, Lea.MailingAddressApartmentRoomOrSuiteNumber AS Lea_MailingAddressApartmentRoomOrSuiteNumber
	, Lea.MailingAddressCity AS Lea_MailingAddressCity
	, Lea.MailingAddressPostalCode AS Lea_MailingAddressPostalCode
	, Lea.MailingAddressStateAbbreviation AS Lea_MailingAddressStateAbbreviation
	, Lea.MailingAddressCountyName AS Lea_MailingAddressCountyName
	, Lea.PhysicalAddressStreetNumberAndName AS Lea_PhysicalAddressStreetNumberAndName
	, Lea.PhysicalAddressApartmentRoomOrSuiteNumber AS Lea_PhysicalAddressApartmentRoomOrSuiteNumber
	, Lea.PhysicalAddressCity AS Lea_PhysicalAddressCity
	, Lea.PhysicalAddressPostalCode AS Lea_PhysicalAddressPostalCode
	, Lea.PhysicalAddressStateAbbreviation AS Lea_PhysicalAddressStateAbbreviation
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
	, K12School.LeaOrganizationName AS K12School_LeaOrganizationName
	, K12School.LeaIdentifierNces AS K12School_LeaIdentifierNces
	, K12School.LeaIdentifierSea AS K12School_LeaIdentifierSea
	, K12School.NameOfInstitution AS K12School_NameOfInstitution
	, K12School.SchoolIdentifierNces AS K12School_SchoolIdentifierNces
	, K12School.SchoolIdentifierSea AS K12School_SchoolIdentifierSea
	, K12School.SchoolIdentifierAct AS K12School_SchoolIdentifierAct
	, K12School.SchoolIdentifierSat AS K12School_SchoolIdentifierSat
	, K12School.SeaOrganizationName AS K12School_SeaOrganizationName
	, K12School.SeaOrganizationIdentifierSea AS K12School_SeaOrganizationIdentifierSea
	, K12School.StateAnsiCode AS K12School_StateAnsiCode
	, K12School.StateAbbreviationCode AS K12School_StateAbbreviationCode
	, K12School.StateAbbreviationDescription AS K12School_StateAbbreviationDescription
	, K12School.PriorLeaIdentifierSea AS K12School_PriorLeaIdentifierSea
	, K12School.PriorSchoolIdentifierSea AS K12School_PriorSchoolIdentifierSea
	, K12School.CharterSchoolIndicator AS K12School_CharterSchoolIndicator
	, K12School.CharterSchoolContractIdNumber AS K12School_CharterSchoolContractIdNumber
	, K12School.CharterSchoolContractApprovalDate AS K12School_CharterSchoolContractApprovalDate
	, K12School.CharterSchoolContractRenewalDate AS K12School_CharterSchoolContractRenewalDate
	, K12School.ReportedFederally AS K12School_ReportedFederally
	, K12School.LeaTypeCode AS K12School_LeaTypeCode
	, K12School.LeaTypeDescription AS K12School_LeaTypeDescription
	, K12School.LeaTypeEdFactsCode AS K12School_LeaTypeEdFactsCode
	, K12School.SchoolTypeCode AS K12School_SchoolTypeCode
	, K12School.SchoolTypeDescription AS K12School_SchoolTypeDescription
	, K12School.SchoolTypeEdFactsCode AS K12School_SchoolTypeEdFactsCode
	, K12School.MailingAddressCity AS K12School_MailingAddressCity
	, K12School.MailingAddressPostalCode AS K12School_MailingAddressPostalCode
	, K12School.MailingAddressStateAbbreviation AS K12School_MailingAddressStateAbbreviation
	, K12School.MailingAddressStreetNumberAndName AS K12School_MailingAddressStreetNumberAndName
	, K12School.PhysicalAddressCity AS K12School_PhysicalAddressCity
	, K12School.PhysicalAddressPostalCode AS K12School_PhysicalAddressPostalCode
	, K12School.PhysicalAddressStateAbbreviation AS K12School_PhysicalAddressStateAbbreviation
	, K12School.PhysicalAddressStreetNumberAndName AS K12School_PhysicalAddressStreetNumberAndName
	, K12School.TelephoneNumber AS K12School_TelephoneNumber
	, K12School.WebSiteAddress AS K12School_WebSiteAddress
	, K12School.OutOfStateIndicator AS K12School_OutOfStateIndicator
	, K12School.RecordStartDateTime AS K12School_RecordStartDateTime
	, K12School.RecordEndDateTime AS K12School_RecordEndDateTime
	, K12School.SchoolOperationalStatus AS K12School_SchoolOperationalStatus
	, K12School.SchoolOperationalStatusEdFactsCode AS K12School_SchoolOperationalStatusEdFactsCode
	, K12School.CharterSchoolStatus AS K12School_CharterSchoolStatus
	, K12School.ReconstitutedStatus AS K12School_ReconstitutedStatus
	, K12School.MailingAddressApartmentRoomOrSuiteNumber AS K12School_MailingAddressApartmentRoomOrSuiteNumber
	, K12School.PhysicalAddressApartmentRoomOrSuiteNumber AS K12School_PhysicalAddressApartmentRoomOrSuiteNumber
	, K12School.IeuOrganizationName AS K12School_IeuOrganizationName
	, K12School.IeuOrganizationIdentifierSea AS K12School_IeuOrganizationIdentifierSea
	, K12School.MailingAddressCountyAnsiCodeCode AS K12School_MailingAddressCountyAnsiCodeCode
	, K12School.MailingAddressCountyName AS K12School_MailingAddressCountyName
	, K12School.PhysicalAddressCountyAnsiCodeCode AS K12School_PhysicalAddressCountyAnsiCodeCode
	, K12School.PhysicalAddressCountyName AS K12School_PhysicalAddressCountyName
	, K12School.Longitude AS K12School_Longitude
	, K12School.Latitude AS K12School_Latitude
	, K12School.SchoolOperationalStatusEffectiveDate AS K12School_SchoolOperationalStatusEffectiveDate
	, K12School.AdministrativeFundingControlCode AS K12School_AdministrativeFundingControlCode
	, K12School.AdministrativeFundingControlDescription AS K12School_AdministrativeFundingControlDescription
	, CalendarEventIndicator.CalendarEventTypeCode AS CalendarEventIndicator_CalendarEventTypeCode
	, CalendarEventIndicator.CalendarEventTypeDescription AS CalendarEventIndicator_CalendarEventTypeDescription
	, CalendarSessionIndicator.SessionTypeCode AS CalendarSessionIndicator_SessionTypeCode
	, CalendarSessionIndicator.SessionTypeDescription AS CalendarSessionIndicator_SessionTypeDescription
	, CalendarSessionIndicator.SessionMarkingTermIndicatorCode AS CalendarSessionIndicator_SessionMarkingTermIndicatorCode
	, CalendarSessionIndicator.SessionMarkingTermIndicatorDescription AS CalendarSessionIndicator_SessionMarkingTermIndicatorDescription
	, CalendarSessionIndicator.SessionSchedulingTermIndicatorCode AS CalendarSessionIndicator_SessionSchedulingTermIndicatorCode
	, CalendarSessionIndicator.SessionSchedulingTermIndicatorDescription AS CalendarSessionIndicator_SessionSchedulingTermIndicatorDescription
	, CalendarSessionIndicator.SessionAttendanceTermIndicatorCode AS CalendarSessionIndicator_SessionAttendanceTermIndicatorCode
	, CalendarSessionIndicator.SessionAttendanceTermIndicatorDescription AS CalendarSessionIndicator_SessionAttendanceTermIndicatorDescription
	, CalendarSession.CalendarCode AS CalendarSession_CalendarCode
	, CalendarSession.CalendarDescription AS CalendarSession_CalendarDescription
	, CalendarSession.SessionBeginDate AS CalendarSession_SessionBeginDate
	, CalendarSession.SessionEndDate AS CalendarSession_SessionEndDate
	, CalendarSession.SessionCode AS CalendarSession_SessionCode
	, CalendarSession.SessionDescription AS CalendarSession_SessionDescription
	, CalendarSession.SessionSequenceNumber AS CalendarSession_SessionSequenceNumber
	, CalendarSession.FirstInstructionDate AS CalendarSession_FirstInstructionDate
	, CalendarSession.LastInstructionDate AS CalendarSession_LastInstructionDate
	, CalendarSession.DaysInSession AS CalendarSession_DaysInSession
	, CalendarSession.SchoolYearMinutes AS CalendarSession_SchoolYearMinutes
	, CalendarSession.InstructionalMinutes AS CalendarSession_InstructionalMinutes
	, CalendarSession.RecordStartDateTime AS CalendarSession_RecordStartDateTime
	, CalendarSession.RecordEndDateTime AS CalendarSession_RecordEndDateTime
	, fact.MinutesPerDay
	, fact.InstructionalMinutesPerDay
	, fact.LunchMinutesPerDay
	, fact.RecessMinutesPerDay
	, CalendarEventDay.CalendarEventDayName AS CalendarEventDay_CalendarEventDayName
	, CalendarEventDay.RecordStartDateTime AS CalendarEventDay_RecordStartDateTime
	, CalendarEventDay.RecordEndDateTime AS CalendarEventDay_RecordEndDateTime
	, AcademicTermDesignator.AcademicTermDesignatorCode AS AcademicTermDesignator_AcademicTermDesignatorCode
	, AcademicTermDesignator.AcademicTermDesignatorDescription AS AcademicTermDesignator_AcademicTermDesignatorDescription
	, CalendarCrisis.CrisisCode AS CalendarCrisis_CrisisCode
	, CalendarCrisis.CrisisName AS CalendarCrisis_CrisisName
	, CalendarCrisis.CrisisDescription AS CalendarCrisis_CrisisDescription
	, CalendarCrisis.CrisisStartDate AS CalendarCrisis_CrisisStartDate
	, CalendarCrisis.CrisisEndDate AS CalendarCrisis_CrisisEndDate
	, CalendarCrisis.CrisisType AS CalendarCrisis_CrisisType
	, CalendarCrisis.RecordStartDateTime AS CalendarCrisis_RecordStartDateTime
	, CalendarCrisis.RecordEndDateTime AS CalendarCrisis_RecordEndDateTime
	, DataCollection.SourceSystemDataCollectionIdentifier AS DataCollection_SourceSystemDataCollectionIdentifier
	, DataCollection.SourceSystemName AS DataCollection_SourceSystemName
	, DataCollection.DataCollectionName AS DataCollection_DataCollectionName
	, DataCollection.DataCollectionDescription AS DataCollection_DataCollectionDescription
	, DataCollection.DataCollectionOpenDate AS DataCollection_DataCollectionOpenDate
	, DataCollection.DataCollectionCloseDate AS DataCollection_DataCollectionCloseDate
	, DataCollection.DataCollectionAcademicSchoolYear AS DataCollection_DataCollectionAcademicSchoolYear
	, DataCollection.DataCollectionSchoolYear AS DataCollection_DataCollectionSchoolYear
	, fact.RecordStartDateTime
	, fact.RecordEndDateTime
	, RecordStatus.RecordStatusTypeCode AS RecordStatus_RecordStatusTypeCode
	, RecordStatus.RecordStatusTypeDescription AS RecordStatus_RecordStatusTypeDescription
	, RecordStatus.RecordStatusCreatorEntityCode AS RecordStatus_RecordStatusCreatorEntityCode
	, RecordStatus.RecordStatusCreatorEntityDescription AS RecordStatus_RecordStatusCreatorEntityDescription
FROM RDS.FactK12AcademicCalendarEvents fact
JOIN RDS.DimSchoolYears SchoolYear
	ON fact.SchoolYearId = SchoolYear.DimSchoolYearId
JOIN RDS.DimDates CalendarEventDate
	ON fact.CalendarEventDateId = CalendarEventDate.DimDateId
JOIN RDS.DimTimes StartTime
	ON fact.StartTimeId = StartTime.DimTimeId
JOIN RDS.DimTimes EndTime
	ON fact.EndTimeId = EndTime.DimTimeId
JOIN RDS.DimSeas Sea
	ON fact.SeaId = Sea.DimSeaId
JOIN RDS.DimIeus Ieu
	ON fact.IeuId = Ieu.DimIeuId
JOIN RDS.DimLeas Lea
	ON fact.LeaId = Lea.DimLeaId
JOIN RDS.DimK12Schools K12School
	ON fact.K12SchoolId = K12School.DimK12SchoolId
JOIN RDS.DimCalendarEventIndicators CalendarEventIndicator
	ON fact.CalendarEventIndicatorId = CalendarEventIndicator.DimCalendarEventIndicatorId
JOIN RDS.DimCalendarSessionIndicators CalendarSessionIndicator
	ON fact.CalendarSessionIndicatorId = CalendarSessionIndicator.DimCalendarSessionIndicatorId
JOIN RDS.DimCalendarSessions CalendarSession
	ON fact.CalendarSessionId = CalendarSession.DimCalendarSessionId
JOIN RDS.DimCalendarEventDays CalendarEventDay
	ON fact.CalendarEventDayId = CalendarEventDay.DimCalendarEventDayId
JOIN RDS.DimAcademicTermDesignators AcademicTermDesignator
	ON fact.AcademicTermDesignatorId = AcademicTermDesignator.DimAcademicTermDesignatorId
JOIN RDS.DimCalendarCrises CalendarCrisis
	ON fact.CalendarCrisisId = CalendarCrisis.DimCalendarCrisisId
JOIN RDS.DimDataCollections DataCollection
	ON fact.DataCollectionId = DataCollection.DimDataCollectionId
JOIN RDS.DimRecordStatuses RecordStatus
	ON fact.RecordStatusId = RecordStatus.DimRecordStatusId
