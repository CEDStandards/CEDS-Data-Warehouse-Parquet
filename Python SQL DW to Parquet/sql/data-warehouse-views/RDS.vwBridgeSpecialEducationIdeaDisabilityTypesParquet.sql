-- View: RDS.vwBridgeSpecialEducationIdeaDisabilityTypesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeSpecialEducationIdeaDisabilityTypesParquet] AS
CREATE   VIEW RDS.vwBridgeSpecialEducationIdeaDisabilityTypesParquet AS SELECT fact.BridgeSpecialEducationIdeaDisabilityTypeId
	, FactSpecialEducation.FullTimeEquivalency AS FactSpecialEducation_FullTimeEquivalency
	, FactSpecialEducation.SpecialEducationFTE AS FactSpecialEducation_SpecialEducationFTE
	, FactSpecialEducation.StudentCount AS FactSpecialEducation_StudentCount
	, IdeaDisabilityType.IdeaDisabilityTypeCode AS IdeaDisabilityType_IdeaDisabilityTypeCode
	, IdeaDisabilityType.IdeaDisabilityTypeDescription AS IdeaDisabilityType_IdeaDisabilityTypeDescription
	, IdeaDisabilityType.IdeaDisabilityTypeEdFactsCode AS IdeaDisabilityType_IdeaDisabilityTypeEdFactsCode
FROM RDS.BridgeSpecialEducationIdeaDisabilityTypes fact
JOIN RDS.FactSpecialEducation FactSpecialEducation
	ON Fact.FactSpecialEducationId = FactSpecialEducation.FactSpecialEducationId
JOIN RDS.DimIdeaDisabilityTypes IdeaDisabilityType
	ON Fact.IdeaDisabilityTypeId = IdeaDisabilityType.DimIdeaDisabilityTypeId
