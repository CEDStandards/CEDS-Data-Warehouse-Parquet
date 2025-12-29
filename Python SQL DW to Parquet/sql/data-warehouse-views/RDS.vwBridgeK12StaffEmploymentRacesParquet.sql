-- View: RDS.vwBridgeK12StaffEmploymentRacesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StaffEmploymentRacesParquet] AS
CREATE   VIEW RDS.vwBridgeK12StaffEmploymentRacesParquet AS SELECT fact.BridgeK12StaffEmploymentRace
	, FactK12StaffEmployment.RecordStartDateTime AS FactK12StaffEmployment_RecordStartDateTime
	, FactK12StaffEmployment.RecordEndDateTime AS FactK12StaffEmployment_RecordEndDateTime
	, FactK12StaffEmployment.YearsOfPriorTeachingExperience AS FactK12StaffEmployment_YearsOfPriorTeachingExperience
	, FactK12StaffEmployment.YearsOfPriorProfessionalExperience AS FactK12StaffEmployment_YearsOfPriorProfessionalExperience
	, FactK12StaffEmployment.YearsOfTotalExperience AS FactK12StaffEmployment_YearsOfTotalExperience
	, FactK12StaffEmployment.YearsofPriorAdultEducationTeachingExperience AS FactK12StaffEmployment_YearsofPriorAdultEducationTeachingExperience
	, FactK12StaffEmployment.FullTimeEquivalency AS FactK12StaffEmployment_FullTimeEquivalency
	, FactK12StaffEmployment.ContractDaysOfServicePerYear AS FactK12StaffEmployment_ContractDaysOfServicePerYear
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeK12StaffEmploymentRaces fact
JOIN RDS.FactK12StaffEmployments FactK12StaffEmployment
	ON Fact.FactK12StaffEmploymentId = FactK12StaffEmployment.FactK12StaffEmploymentId
JOIN RDS.DimRaces Race
	ON Fact.RaceId = Race.DimRaceId
