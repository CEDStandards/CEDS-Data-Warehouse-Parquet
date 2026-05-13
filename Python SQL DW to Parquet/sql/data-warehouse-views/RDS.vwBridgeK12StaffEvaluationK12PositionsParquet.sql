CREATE OR ALTER VIEW [RDS].[vwBridgeK12StaffEvaluationK12PositionsParquet] AS
	SELECT fact.BridgeK12StaffEvaluationK12PositionId
	, FactK12StaffEvaluation.SeaId AS FactK12StaffEvaluation_SeaId
	, FactK12StaffEvaluation.LeaId AS FactK12StaffEvaluation_LeaId
	, FactK12StaffEvaluation.K12SchoolId AS FactK12StaffEvaluation_K12SchoolId
	, FactK12StaffEvaluation.SchoolYearId AS FactK12StaffEvaluation_SchoolYearId
	, FactK12StaffEvaluation.K12StaffCategoryId AS FactK12StaffEvaluation_K12StaffCategoryId
	, FactK12StaffEvaluation.K12StaffStatusId AS FactK12StaffEvaluation_K12StaffStatusId
	, FactK12StaffEvaluation.TeachingCredentialStatusId AS FactK12StaffEvaluation_TeachingCredentialStatusId
	, FactK12StaffEvaluation.K12EmploymentStatusId AS FactK12StaffEvaluation_K12EmploymentStatusId
	, FactK12StaffEvaluation.IeuId AS FactK12StaffEvaluation_IeuId
	, FactK12StaffEvaluation.EmployerId AS FactK12StaffEvaluation_EmployerId
	, FactK12StaffEvaluation.K12StaffId AS FactK12StaffEvaluation_K12StaffId
	, FactK12StaffEvaluation.K12Staff_CurrentId AS FactK12StaffEvaluation_K12Staff_CurrentId
	, FactK12StaffEvaluation.K12JobId AS FactK12StaffEvaluation_K12JobId
	, FactK12StaffEvaluation.K12PositionId AS FactK12StaffEvaluation_K12PositionId
	, FactK12StaffEvaluation.K12DemographicId AS FactK12StaffEvaluation_K12DemographicId
	, FactK12StaffEvaluation.StaffEvaluationOutcome AS FactK12StaffEvaluation_StaffEvaluationOutcome
	, FactK12StaffEvaluation.StaffEvaluationPartScale AS FactK12StaffEvaluation_StaffEvaluationPartScale
	, FactK12StaffEvaluation.StaffEvaluationPartScoreOrRating AS FactK12StaffEvaluation_StaffEvaluationPartScoreOrRating
	, FactK12StaffEvaluation.StaffEvaluationScale AS FactK12StaffEvaluation_StaffEvaluationScale
	, FactK12StaffEvaluation.StaffEvaluationScoreOrRating AS FactK12StaffEvaluation_StaffEvaluationScoreOrRating
	, FactK12StaffEvaluation.StaffEvaluationPartStatusId AS FactK12StaffEvaluation_StaffEvaluationPartStatusId
	, FactK12StaffEvaluation.StaffEvaluationScaleId AS FactK12StaffEvaluation_StaffEvaluationScaleId
	, FactK12StaffEvaluation.OnetSocOccupationTypeId AS FactK12StaffEvaluation_OnetSocOccupationTypeId
	, FactK12StaffEvaluation.DataCollectionId AS FactK12StaffEvaluation_DataCollectionId
	, FactK12StaffEvaluation.SeaJobClassificationId AS FactK12StaffEvaluation_SeaJobClassificationId
	, FactK12StaffEvaluation.LeaJobClassificationId AS FactK12StaffEvaluation_LeaJobClassificationId
	, K12Position.JobPositionIdentifierSea AS K12Position_JobPositionIdentifierSea
	, K12Position.JobPositionIdentifierLea AS K12Position_JobPositionIdentifierLea
	, K12Position.JobPositionIdentifierSchool AS K12Position_JobPositionIdentifierSchool
	, K12Position.PositionTitle AS K12Position_PositionTitle
	, K12Position.HourlyWage AS K12Position_HourlyWage
	, K12Position.StaffCompensationBaseSalary AS K12Position_StaffCompensationBaseSalary
FROM RDS.BridgeK12StaffEvaluationK12Positions fact
JOIN RDS.FactK12StaffEvaluationParts FactK12StaffEvaluation
	ON fact.FactK12StaffEvaluationId = FactK12StaffEvaluation.FactK12StaffEvaluationPartId
JOIN RDS.DimK12JobPositions K12Position
	ON fact.K12PositionId = K12Position.DimK12JobPositionId
