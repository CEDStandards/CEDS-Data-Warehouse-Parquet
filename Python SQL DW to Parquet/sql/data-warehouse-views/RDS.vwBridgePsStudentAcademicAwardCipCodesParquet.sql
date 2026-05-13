CREATE OR ALTER VIEW [RDS].[vwBridgePsStudentAcademicAwardCipCodesParquet] AS
	SELECT fact.BridgePsStudentAcademicAwardCipCodeId
	, FactPsStudentAcademicAward.PsInstitutionId AS FactPsStudentAcademicAward_PsInstitutionId
	, FactPsStudentAcademicAward.PsStudentId AS FactPsStudentAcademicAward_PsStudentId
	, FactPsStudentAcademicAward.PsStudent_CurrentId AS FactPsStudentAcademicAward_PsStudent_CurrentId
	, FactPsStudentAcademicAward.PsAcademicAwardTitleId AS FactPsStudentAcademicAward_PsAcademicAwardTitleId
	, FactPsStudentAcademicAward.AcademicAwardDateId AS FactPsStudentAcademicAward_AcademicAwardDateId
	, FactPsStudentAcademicAward.PsAcademicAwardStatusId AS FactPsStudentAcademicAward_PsAcademicAwardStatusId
	, FactPsStudentAcademicAward.StudentCount AS FactPsStudentAcademicAward_StudentCount
	, FactPsStudentAcademicAward.SchoolYearId AS FactPsStudentAcademicAward_SchoolYearId
	, FactPsStudentAcademicAward.PsDemographicId AS FactPsStudentAcademicAward_PsDemographicId
	, CipCode.CipCode AS CipCode_CipCode
	, CipCode.CipDescription AS CipCode_CipDescription
	, CipCode.CipUseCode AS CipCode_CipUseCode
	, CipCode.CipUseDescription AS CipCode_CipUseDescription
	, CipCode.CipVersionCode AS CipCode_CipVersionCode
	, CipCode.CipVersionDescription AS CipCode_CipVersionDescription
	, fact.PostsecondaryProgramLevelCode
	, fact.PostsecondaryProgramLevelDescription
FROM RDS.BridgePsStudentAcademicAwardCipCodes fact
JOIN RDS.FactPsStudentAcademicAwards FactPsStudentAcademicAward
	ON fact.FactPsStudentAcademicAwardId = FactPsStudentAcademicAward.FactPsStudentAcademicAwardId
JOIN RDS.DimCipCodes CipCode
	ON fact.CipCodeId = CipCode.DimCipCodeId
