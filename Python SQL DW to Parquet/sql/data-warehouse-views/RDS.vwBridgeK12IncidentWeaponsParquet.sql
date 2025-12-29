-- View: RDS.vwBridgeK12IncidentWeaponsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12IncidentWeaponsParquet] AS
CREATE   VIEW RDS.vwBridgeK12IncidentWeaponsParquet AS SELECT fact.BridgeK12IncidentsWeaponId
	, FactK12Incident.RecordStartDateTime AS FactK12Incident_RecordStartDateTime
	, FactK12Incident.RecordEndDateTime AS FactK12Incident_RecordEndDateTime
	, FactK12Incident.IncidentCost AS FactK12Incident_IncidentCost
	, Weapon.WeaponTypeCode AS Weapon_WeaponTypeCode
	, Weapon.WeaponTypeDescription AS Weapon_WeaponTypeDescription
	, Weapon.WeaponTypeEdFactsCode AS Weapon_WeaponTypeEdFactsCode
FROM RDS.BridgeK12IncidentWeapons fact
JOIN RDS.FactK12Incidents FactK12Incident
	ON Fact.FactK12IncidentId = FactK12Incident.FactK12IncidentId
JOIN RDS.DimWeapons Weapon
	ON Fact.WeaponId = Weapon.DimWeaponId
