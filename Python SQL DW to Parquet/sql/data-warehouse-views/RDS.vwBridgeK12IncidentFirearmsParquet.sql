-- View: RDS.vwBridgeK12IncidentFirearmsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12IncidentFirearmsParquet] AS
CREATE   VIEW RDS.vwBridgeK12IncidentFirearmsParquet AS SELECT fact.BridgeK12IncidentFirearmId
	, FactK12Incident.RecordStartDateTime AS FactK12Incident_RecordStartDateTime
	, FactK12Incident.RecordEndDateTime AS FactK12Incident_RecordEndDateTime
	, FactK12Incident.IncidentCost AS FactK12Incident_IncidentCost
	, Firearm.FirearmTypeCode AS Firearm_FirearmTypeCode
	, Firearm.FirearmTypeDescription AS Firearm_FirearmTypeDescription
	, Firearm.FirearmTypeEdFactsCode AS Firearm_FirearmTypeEdFactsCode
FROM RDS.BridgeK12IncidentFirearms fact
JOIN RDS.FactK12Incidents FactK12Incident
	ON Fact.FactK12IncidentId = FactK12Incident.FactK12IncidentId
JOIN RDS.DimFirearms Firearm
	ON Fact.FirearmId = Firearm.DimFirearmId
