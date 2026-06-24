CREATE OR ALTER VIEW [RDS].[vwDimK12JobPositionStatusesParquet] AS
	SELECT fact.DimK12JobPositionStatusId
	, fact.JobPositionStatusCode
	, fact.JobPositionStatusDescription
	, fact.JobPositionStatusCancelledReasonCode
	, fact.JobPositionStatusCancelledReasonDescription
FROM RDS.DimK12JobPositionStatuses fact
