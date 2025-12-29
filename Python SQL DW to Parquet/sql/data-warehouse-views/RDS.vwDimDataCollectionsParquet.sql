-- View: RDS.vwDimDataCollectionsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwDimDataCollectionsParquet] AS
CREATE   VIEW RDS.vwDimDataCollectionsParquet AS SELECT fact.DimDataCollectionId
	, fact.SourceSystemDataCollectionIdentifier
	, fact.SourceSystemName
	, fact.DataCollectionName
	, fact.DataCollectionDescription
	, fact.DataCollectionOpenDate
	, fact.DataCollectionCloseDate
	, fact.DataCollectionAcademicSchoolYear
	, fact.DataCollectionSchoolYear
FROM RDS.DimDataCollections fact
