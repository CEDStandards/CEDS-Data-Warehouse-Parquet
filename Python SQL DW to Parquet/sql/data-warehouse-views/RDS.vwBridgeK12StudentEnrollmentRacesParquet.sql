-- View: RDS.vwBridgeK12StudentEnrollmentRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StudentEnrollmentRacesParquet] AS
CREATE   VIEW RDS.vwBridgeK12StudentEnrollmentRacesParquet AS SELECT fact.BridgeK12StudentEnrollmentRaceId
	, FactK12StudentEnrollment.RecordStartDateTime AS FactK12StudentEnrollment_RecordStartDateTime
	, FactK12StudentEnrollment.RecordEndDateTime AS FactK12StudentEnrollment_RecordEndDateTime
	, FactK12StudentEnrollment.FullTimeEquivalency AS FactK12StudentEnrollment_FullTimeEquivalency
	, FactK12StudentEnrollment.StudentCount AS FactK12StudentEnrollment_StudentCount
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeK12StudentEnrollmentRaces fact
JOIN RDS.FactK12StudentEnrollments FactK12StudentEnrollment
	ON Fact.FactK12StudentEnrollmentId = FactK12StudentEnrollment.FactK12StudentEnrollmentId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
