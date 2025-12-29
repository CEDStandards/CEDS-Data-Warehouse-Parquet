-- View: RDS.vwBridgeK12IncidentsIncidentBehaviorsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12IncidentsIncidentBehaviorsParquet] AS
CREATE   VIEW RDS.vwBridgeK12IncidentsIncidentBehaviorsParquet AS SELECT fact.BridgeK12IncidentsIncidentBehaviorId
	, FactK12Incident.RecordStartDateTime AS FactK12Incident_RecordStartDateTime
	, FactK12Incident.RecordEndDateTime AS FactK12Incident_RecordEndDateTime
	, FactK12Incident.IncidentCost AS FactK12Incident_IncidentCost
	, IncidentBehavior.IncidentBehaviorCode AS IncidentBehavior_IncidentBehaviorCode
	, IncidentBehavior.IncidentBehaviorDescription AS IncidentBehavior_IncidentBehaviorDescription
	, IncidentBehavior.SecondaryIncidentBehaviorCode AS IncidentBehavior_SecondaryIncidentBehaviorCode
	, IncidentBehavior.SecondaryIncidentBehaviorDescription AS IncidentBehavior_SecondaryIncidentBehaviorDescription
FROM RDS.BridgeK12IncidentsIncidentBehaviors fact
JOIN RDS.FactK12Incidents FactK12Incident
	ON Fact.FactK12IncidentId = FactK12Incident.FactK12IncidentId
JOIN RDS.DimIncidentBehaviors IncidentBehavior
	ON Fact.IncidentBehaviorId = IncidentBehavior.DimIncidentBehaviorId
