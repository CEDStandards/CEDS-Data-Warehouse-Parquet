-- View: RDS.vwBridgeK12StaffCourseSectionRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StaffCourseSectionRacesParquet] AS
CREATE   VIEW RDS.vwBridgeK12StaffCourseSectionRacesParquet AS SELECT fact.BridgeK12StaffCourseSectionRaceId
	, FactK12StaffCourseSection.K12StaffMemberCount AS FactK12StaffCourseSection_K12StaffMemberCount
	, FactK12StaffCourseSection.K12StudentCount AS FactK12StaffCourseSection_K12StudentCount
	, FactK12StaffCourseSection.AvailableCarnegieUnitCredit AS FactK12StaffCourseSection_AvailableCarnegieUnitCredit
	, FactK12StaffCourseSection.InstructionalMinutes AS FactK12StaffCourseSection_InstructionalMinutes
	, FactK12StaffCourseSection.RecordStartDateTime AS FactK12StaffCourseSection_RecordStartDateTime
	, FactK12StaffCourseSection.RecordEndDateTime AS FactK12StaffCourseSection_RecordEndDateTime
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeK12StaffCourseSectionRaces fact
JOIN RDS.FactK12StaffCourseSections FactK12StaffCourseSection
	ON Fact.FactK12StaffCourseSectionId = FactK12StaffCourseSection.FactK12StaffCourseSectionId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
