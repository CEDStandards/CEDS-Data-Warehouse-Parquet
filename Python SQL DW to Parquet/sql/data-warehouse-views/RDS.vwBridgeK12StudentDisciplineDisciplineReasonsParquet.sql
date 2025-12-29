-- View: RDS.vwBridgeK12StudentDisciplineDisciplineReasonsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StudentDisciplineDisciplineReasonsParquet] AS
CREATE   VIEW RDS.vwBridgeK12StudentDisciplineDisciplineReasonsParquet AS SELECT fact.BridgeK12StudentDisciplineDisciplineReasonId
	, FactK12StudentDiscipline.IncidentIdentifier AS FactK12StudentDiscipline_IncidentIdentifier
	, FactK12StudentDiscipline.DurationOfDisciplinaryAction AS FactK12StudentDiscipline_DurationOfDisciplinaryAction
	, FactK12StudentDiscipline.DisciplineCount AS FactK12StudentDiscipline_DisciplineCount
	, DisciplineReason.DisciplineReasonCode AS DisciplineReason_DisciplineReasonCode
	, DisciplineReason.DisciplineReasonDescription AS DisciplineReason_DisciplineReasonDescription
FROM RDS.BridgeK12StudentDisciplineDisciplineReasons fact
JOIN RDS.FactK12StudentDisciplines FactK12StudentDiscipline
	ON Fact.FactK12StudentDisciplineId = FactK12StudentDiscipline.FactK12StudentDisciplineId
JOIN RDS.DimDisciplineReasons DisciplineReason
	ON Fact.DisciplineReasonId = DisciplineReason.DimDisciplineReasonId
