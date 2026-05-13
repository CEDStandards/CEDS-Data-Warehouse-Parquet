CREATE OR ALTER VIEW [RDS].[vwBridgeK12StaffAssignmentsRacesParquet] AS
	SELECT fact.BridgeK12StaffAssignmentRaceId
	, FactK12StaffAssignment.LeaId AS FactK12StaffAssignment_LeaId
	, FactK12StaffAssignment.SchoolYearId AS FactK12StaffAssignment_SchoolYearId
	, FactK12StaffAssignment.K12SchoolId AS FactK12StaffAssignment_K12SchoolId
	, FactK12StaffAssignment.K12StaffStatusId AS FactK12StaffAssignment_K12StaffStatusId
	, FactK12StaffAssignment.K12StaffCategoryId AS FactK12StaffAssignment_K12StaffCategoryId
	, FactK12StaffAssignment.TeachingCredentialStatusId AS FactK12StaffAssignment_TeachingCredentialStatusId
	, FactK12StaffAssignment.SeaId AS FactK12StaffAssignment_SeaId
	, FactK12StaffAssignment.K12StaffId AS FactK12StaffAssignment_K12StaffId
	, FactK12StaffAssignment.K12Staff_CurrentId AS FactK12StaffAssignment_K12Staff_CurrentId
	, FactK12StaffAssignment.IeuId AS FactK12StaffAssignment_IeuId
	, FactK12StaffAssignment.CharterSchoolAuthorizerId AS FactK12StaffAssignment_CharterSchoolAuthorizerId
	, FactK12StaffAssignment.CharterSchoolManagementOrganizationId AS FactK12StaffAssignment_CharterSchoolManagementOrganizationId
	, FactK12StaffAssignment.LeaEmployerId AS FactK12StaffAssignment_LeaEmployerId
	, FactK12StaffAssignment.IeuEmployerId AS FactK12StaffAssignment_IeuEmployerId
	, FactK12StaffAssignment.ScedCodeId AS FactK12StaffAssignment_ScedCodeId
	, FactK12StaffAssignment.OnetSocOccupationTypeId AS FactK12StaffAssignment_OnetSocOccupationTypeId
	, FactK12StaffAssignment.K12EmploymentStatusId AS FactK12StaffAssignment_K12EmploymentStatusId
	, FactK12StaffAssignment.K12PositionId AS FactK12StaffAssignment_K12PositionId
	, FactK12StaffAssignment.K12JobId AS FactK12StaffAssignment_K12JobId
	, FactK12StaffAssignment.K12JobPositionStatusId AS FactK12StaffAssignment_K12JobPositionStatusId
	, FactK12StaffAssignment.AssignmentStartDateId AS FactK12StaffAssignment_AssignmentStartDateId
	, FactK12StaffAssignment.AssignmentEndDateId AS FactK12StaffAssignment_AssignmentEndDateId
	, FactK12StaffAssignment.EmploymentStartDateId AS FactK12StaffAssignment_EmploymentStartDateId
	, FactK12StaffAssignment.EmploymentEndDateId AS FactK12StaffAssignment_EmploymentEndDateId
	, FactK12StaffAssignment.HireDateId AS FactK12StaffAssignment_HireDateId
	, FactK12StaffAssignment.JobPositionStatusDateId AS FactK12StaffAssignment_JobPositionStatusDateId
	, FactK12StaffAssignment.AssignmentProgramTypeId AS FactK12StaffAssignment_AssignmentProgramTypeId
	, FactK12StaffAssignment.InstructionLanguageId AS FactK12StaffAssignment_InstructionLanguageId
	, FactK12StaffAssignment.K12StaffAssignmentStatusId AS FactK12StaffAssignment_K12StaffAssignmentStatusId
	, FactK12StaffAssignment.K12DemographicId AS FactK12StaffAssignment_K12DemographicId
	, FactK12StaffAssignment.EmployerId AS FactK12StaffAssignment_EmployerId
	, FactK12StaffAssignment.DataCollectionId AS FactK12StaffAssignment_DataCollectionId
	, FactK12StaffAssignment.LeaJobClassificationId AS FactK12StaffAssignment_LeaJobClassificationId
	, FactK12StaffAssignment.SeaJobClassificationId AS FactK12StaffAssignment_SeaJobClassificationId
	, FactK12StaffAssignment.SeaFinancialExpenditureClassificationId AS FactK12StaffAssignment_SeaFinancialExpenditureClassificationId
	, FactK12StaffAssignment.FullTimeEquivalency AS FactK12StaffAssignment_FullTimeEquivalency
	, FactK12StaffAssignment.K12StaffAssignmentCount AS FactK12StaffAssignment_K12StaffAssignmentCount
	, Race.RaceCode AS Race_RaceCode
	, Race.RaceDescription AS Race_RaceDescription
	, Race.RaceEdFactsCode AS Race_RaceEdFactsCode
FROM RDS.BridgeK12StaffAssignmentsRaces fact
JOIN RDS.FactK12StaffAssignments FactK12StaffAssignment
	ON fact.FactK12StaffAssignmentId = FactK12StaffAssignment.FactK12StaffAssignmentId
JOIN RDS.DimRaces Race
	ON fact.RaceId = Race.DimRaceId
