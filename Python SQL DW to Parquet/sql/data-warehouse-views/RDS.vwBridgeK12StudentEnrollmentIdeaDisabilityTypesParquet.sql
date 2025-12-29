-- View: RDS.vwBridgeK12StudentEnrollmentIdeaDisabilityTypesParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StudentEnrollmentIdeaDisabilityTypesParquet] AS
CREATE   VIEW RDS.vwBridgeK12StudentEnrollmentIdeaDisabilityTypesParquet AS SELECT fact.BridgeK12StudentEnrollmentIdeaDisabilityTypeId
	, FactK12StudentEnrollment.RecordStartDateTime AS FactK12StudentEnrollment_RecordStartDateTime
	, FactK12StudentEnrollment.RecordEndDateTime AS FactK12StudentEnrollment_RecordEndDateTime
	, FactK12StudentEnrollment.FullTimeEquivalency AS FactK12StudentEnrollment_FullTimeEquivalency
	, FactK12StudentEnrollment.StudentCount AS FactK12StudentEnrollment_StudentCount
	, IdeaDisabilityType.IdeaDisabilityTypeCode AS IdeaDisabilityType_IdeaDisabilityTypeCode
	, IdeaDisabilityType.IdeaDisabilityTypeDescription AS IdeaDisabilityType_IdeaDisabilityTypeDescription
	, IdeaDisabilityType.IdeaDisabilityTypeEdFactsCode AS IdeaDisabilityType_IdeaDisabilityTypeEdFactsCode
FROM RDS.BridgeK12StudentEnrollmentIdeaDisabilityTypes fact
JOIN RDS.FactK12StudentEnrollments FactK12StudentEnrollment
	ON Fact.FactK12StudentEnrollmentId = FactK12StudentEnrollment.FactK12StudentEnrollmentId
JOIN RDS.DimIdeaDisabilityTypes IdeaDisabilityType
	ON Fact.IdeaDisabilityTypeId = IdeaDisabilityType.DimIdeaDisabilityTypeId
