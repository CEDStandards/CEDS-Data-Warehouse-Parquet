-- View: RDS.vwBridgePsStudentEnrollmentRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgePsStudentEnrollmentRacesParquet] AS
CREATE   VIEW RDS.vwBridgePsStudentEnrollmentRacesParquet AS SELECT fact.BridgePsStudentEnrollmentRaceId
	, FactPsStudentEnrollment.StudentCount AS FactPsStudentEnrollment_StudentCount
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgePsStudentEnrollmentRaces fact
JOIN RDS.FactPsStudentEnrollments FactPsStudentEnrollment
	ON Fact.FactPsStudentEnrollmentId = FactPsStudentEnrollment.FactPsStudentEnrollmentId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
