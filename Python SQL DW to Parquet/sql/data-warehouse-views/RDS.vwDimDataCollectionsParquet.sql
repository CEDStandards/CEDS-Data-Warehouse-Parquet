CREATE OR ALTER VIEW [RDS].[vwDimDataCollectionsParquet] AS
	SELECT fact.DimDataCollectionId
	, fact.SourceSystemDataCollectionIdentifier
	, fact.SourceSystemName
	, fact.DataCollectionName
	, fact.DataCollectionDescription
	, fact.DataCollectionOpenDate
	, fact.DataCollectionCloseDate
	, fact.DataCollectionAcademicSchoolYear
	, fact.DataCollectionSchoolYear
FROM RDS.DimDataCollections fact
