CREATE OR ALTER VIEW [RDS].[vwBridgeK12IncidentIncidentBehaviorsParquet] AS
	SELECT fact.BridgeK12IncidentsIncidentBehaviorId
	, FactK12Incident.SchoolYearId AS FactK12Incident_SchoolYearId
	, FactK12Incident.CountDateId AS FactK12Incident_CountDateId
	, FactK12Incident.RecordStartDateTime AS FactK12Incident_RecordStartDateTime
	, FactK12Incident.RecordEndDateTime AS FactK12Incident_RecordEndDateTime
	, FactK12Incident.IncidentDateId AS FactK12Incident_IncidentDateId
	, FactK12Incident.IncidentTimeId AS FactK12Incident_IncidentTimeId
	, FactK12Incident.SeaId AS FactK12Incident_SeaId
	, FactK12Incident.IeuId AS FactK12Incident_IeuId
	, FactK12Incident.LeaId AS FactK12Incident_LeaId
	, FactK12Incident.K12SchoolId AS FactK12Incident_K12SchoolId
	, FactK12Incident.IncidentId AS FactK12Incident_IncidentId
	, FactK12Incident.IncidentSettingId AS FactK12Incident_IncidentSettingId
	, FactK12Incident.IncidentTimeIndicatorId AS FactK12Incident_IncidentTimeIndicatorId
	, FactK12Incident.IncidentStatusId AS FactK12Incident_IncidentStatusId
	, FactK12Incident.IncidentCost AS FactK12Incident_IncidentCost
	, FactK12Incident.DataCollectionId AS FactK12Incident_DataCollectionId
	, FactK12Incident.RecordStatusId AS FactK12Incident_RecordStatusId
	, IncidentBehavior.IncidentBehaviorCode AS IncidentBehavior_IncidentBehaviorCode
	, IncidentBehavior.IncidentBehaviorDescription AS IncidentBehavior_IncidentBehaviorDescription
	, IncidentBehavior.SecondaryIncidentBehaviorCode AS IncidentBehavior_SecondaryIncidentBehaviorCode
	, IncidentBehavior.SecondaryIncidentBehaviorDescription AS IncidentBehavior_SecondaryIncidentBehaviorDescription
FROM RDS.BridgeK12IncidentIncidentBehaviors fact
JOIN RDS.FactK12Incidents FactK12Incident
	ON fact.FactK12IncidentId = FactK12Incident.FactK12IncidentId
JOIN RDS.DimIncidentBehaviors IncidentBehavior
	ON fact.IncidentBehaviorId = IncidentBehavior.DimIncidentBehaviorId
