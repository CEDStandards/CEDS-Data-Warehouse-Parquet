CREATE OR ALTER VIEW [RDS].[vwDimK12JobPositionStatusesParquet] AS
	SELECT fact.DimK12JobPositionStatusId
	, fact.JobPositionStatusCode
	, fact.JobPositionStatusDescription
	, fact.JobPositionCancellationReasonCode
	, fact.JobPositionCancellationReasonDescription
FROM RDS.DimK12JobPositionStatuses fact
