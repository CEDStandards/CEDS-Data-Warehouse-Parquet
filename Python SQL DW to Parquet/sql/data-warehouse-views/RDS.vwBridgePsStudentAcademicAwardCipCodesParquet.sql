-- View: RDS.vwBridgePsStudentAcademicAwardCipCodesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgePsStudentAcademicAwardCipCodesParquet] AS
CREATE   VIEW RDS.vwBridgePsStudentAcademicAwardCipCodesParquet AS SELECT fact.BridgePsStudentAcademicAwardCipCodeId
	, FactPsStudentAcademicAward.StudentCount AS FactPsStudentAcademicAward_StudentCount
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
	ON Fact.FactPsStudentAcademicAwardId = FactPsStudentAcademicAward.FactPsStudentAcademicAwardId
JOIN RDS.DimCipCodes CipCode
	ON Fact.CipCodeId = CipCode.DimCipCodeId
