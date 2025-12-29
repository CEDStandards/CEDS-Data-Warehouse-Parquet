-- View: RDS.vwBridgeK12StudentDisciplineIncidentBehaviorsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StudentDisciplineIncidentBehaviorsParquet] AS
CREATE   VIEW RDS.vwBridgeK12StudentDisciplineIncidentBehaviorsParquet AS SELECT fact.BridgeK12StudentDisciplineIncidentBehaviorId
	, FactK12StudentDiscipline.IncidentIdentifier AS FactK12StudentDiscipline_IncidentIdentifier
	, FactK12StudentDiscipline.DurationOfDisciplinaryAction AS FactK12StudentDiscipline_DurationOfDisciplinaryAction
	, FactK12StudentDiscipline.DisciplineCount AS FactK12StudentDiscipline_DisciplineCount
	, IncidentBehavior.IncidentBehaviorCode AS IncidentBehavior_IncidentBehaviorCode
	, IncidentBehavior.IncidentBehaviorDescription AS IncidentBehavior_IncidentBehaviorDescription
	, IncidentBehavior.SecondaryIncidentBehaviorCode AS IncidentBehavior_SecondaryIncidentBehaviorCode
	, IncidentBehavior.SecondaryIncidentBehaviorDescription AS IncidentBehavior_SecondaryIncidentBehaviorDescription
FROM RDS.BridgeK12StudentDisciplineIncidentBehaviors fact
JOIN RDS.FactK12StudentDisciplines FactK12StudentDiscipline
	ON Fact.FactK12StudentDisciplineId = FactK12StudentDiscipline.FactK12StudentDisciplineId
JOIN RDS.DimIncidentBehaviors IncidentBehavior
	ON Fact.IncidentBehaviorId = IncidentBehavior.DimIncidentBehaviorId
