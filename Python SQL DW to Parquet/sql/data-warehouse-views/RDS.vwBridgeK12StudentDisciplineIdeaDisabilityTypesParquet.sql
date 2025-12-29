-- View: RDS.vwBridgeK12StudentDisciplineIdeaDisabilityTypesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StudentDisciplineIdeaDisabilityTypesParquet] AS
CREATE   VIEW RDS.vwBridgeK12StudentDisciplineIdeaDisabilityTypesParquet AS SELECT fact.BridgeK12StudentDisciplineIdeaDisabilityTypeId
	, IdeaDisabilityType.IdeaDisabilityTypeCode AS IdeaDisabilityType_IdeaDisabilityTypeCode
	, IdeaDisabilityType.IdeaDisabilityTypeDescription AS IdeaDisabilityType_IdeaDisabilityTypeDescription
	, IdeaDisabilityType.IdeaDisabilityTypeEdFactsCode AS IdeaDisabilityType_IdeaDisabilityTypeEdFactsCode
	, FactK12StudentDiscipline.IncidentIdentifier AS FactK12StudentDiscipline_IncidentIdentifier
	, FactK12StudentDiscipline.DurationOfDisciplinaryAction AS FactK12StudentDiscipline_DurationOfDisciplinaryAction
	, FactK12StudentDiscipline.DisciplineCount AS FactK12StudentDiscipline_DisciplineCount
FROM RDS.BridgeK12StudentDisciplineIdeaDisabilityTypes fact
JOIN RDS.DimIdeaDisabilityTypes IdeaDisabilityType
	ON Fact.IdeaDisabilityTypeId = IdeaDisabilityType.DimIdeaDisabilityTypeId
JOIN RDS.FactK12StudentDisciplines FactK12StudentDiscipline
	ON Fact.FactK12StudentDisciplineId = FactK12StudentDiscipline.FactK12StudentDisciplineId
