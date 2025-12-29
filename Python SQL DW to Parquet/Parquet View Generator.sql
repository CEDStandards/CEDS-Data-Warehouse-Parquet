DECLARE @TableName VARCHAR(100) = '', @ColumnName VARCHAR(100) = '', @DimTableName VARCHAR(50) = '', @DimColumnName VARCHAR(100) = '', @SQL VARCHAR(MAX) = '', @SQL_Columns VARCHAR(MAX) = '', @SQL_Joins VARCHAR(MAX) = '', @NL CHAR(2)

SET @NL = CHAR(13)+CHAR(10)

DECLARE tableCursor CURSOR FOR 
SELECT Table_Name FROM INFORMATION_SCHEMA.Tables where (table_name like 'Fact%' or table_name like 'Bridge%' or table_name in ('DimAccessibilityFeatures', 'DimAssessmentAdministrations', 'DimAssessmentParticipationSessions', 'DimAssessmentPerformanceLevels', 'DimAssessments', 'DimAssessmentSubtests', 'DimCalendarCrises', 'DimCalendarEventDays', 'DimCalendarSessions', 'DimCharterSchoolAuthorizers', 'DimCharterSchoolManagementOrganizations', 'DimCompetencyDefinitions', 'DimContacts', 'DimCredentialAwards', 'DimCredentialDefinitions', 'DimCredentialIssuers', 'DimCredentials', 'DimDataCollections', 'DimEarlyLearningOrganizations', 'DimEducationOrganizationNetworks', 'DimEmployers', 'DimFacilities', 'DimFinancialAccounts', 'DimK12AcademicAwards', 'DimK12CourseFundings', 'DimK12Courses', 'DimK12CourseSections', 'DimK12JobPositions', 'DimK12Jobs', 'DimLeaFinancialAccountBalances', 'DimLeaFinancialAccountClassifications', 'DimLeaFinancialExpenditureClassifications', 'DimLeaFinancialRevenueClassifications', 'DimLeaJobClassifications', 'DimOrganizationAddresses', 'DimOrganizationCalendarSessions', 'DimPersonAddresses', 'DimProfessionalDevelopmentActivities', 'DimPsCourses', 'DimSeaFinancialAccountBalances', 'DimSeaFinancialAccountClassifications', 'DimSeaFinancialExpenditureClassifications', 'DimSeaFinancialRevenueClassifications', 'DimSeaJobClassifications', '', 'DimOrganizations', 'DimK12Schools', 'DimLeas', 'DimIeus', 'DimSeas', 'DimPsInstitutions', 'DimPeople', 'DimPeople_Current')) and TABLE_SCHEMA = 'rds' and table_name not like '%dtos' and table_name not like '%reports' and table_name not in ('FactCustomCounts')

OPEN tableCursor  
FETCH NEXT FROM tableCursor INTO @TableName 

WHILE @@FETCH_STATUS = 0  
BEGIN  

	SELECT @SQL = 'CREATE OR ALTER VIEW RDS.vw' + @TableName + 'Parquet AS' + @NL
	SELECT @SQL = 'SELECT ' 
	SELECT @SQL_Joins = 'FROM RDS.' + @TableName + ' fact' + @NL
	SELECT @SQL_Columns = ''

	SELECT 
		ccu.table_name AS SourceTable
		,ccu.constraint_name AS SourceConstraint
		,ccu.column_name AS SourceColumn
		,kcu.table_name AS TargetTable
		,kcu.column_name AS TargetColumn
	INTO #ForeignKeys
	FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE ccu
	INNER JOIN INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS rc
		ON ccu.CONSTRAINT_NAME = rc.CONSTRAINT_NAME 
	INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE kcu 
		ON kcu.CONSTRAINT_NAME = rc.UNIQUE_CONSTRAINT_NAME  
	WHERE ccu.table_name = @TableName

	

	DECLARE columnCursor CURSOR FOR 
	SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.columns WHERE TABLE_NAME = @TableName AND TABLE_SCHEMA = 'RDS'

	OPEN columnCursor  
	FETCH NEXT FROM columnCursor INTO @ColumnName 

	WHILE @@FETCH_STATUS = 0  
	BEGIN  

		IF EXISTS (SELECT 1 FROM #ForeignKeys WHERE SourceColumn = @ColumnName AND TargetTable <> @TableName) BEGIN
			--IF EXISTS (SELECT 1 FROM #ForeignKeys WHERE SourceColumn = @ColumnName AND (TargetTable IN ('DimPeople', 'DimChildOutcomeSummaries', 'DimCharterSchoolAuthorizers', 'DimSeclusionOrRestraintStatuses', 'DimLanguages', 'DimGradeLevels', 'DimSchoolYears', 'DimIdeaDisabilityTypes', 'DimAssessmentSubtests', 'DimDates') OR (TargetTable = 'DimLeas' AND SourceColumn <> 'LeaId'))) BEGIN
				SELECT @SQL_Joins = @SQL_Joins + 'JOIN RDS.' + TargetTable + ' ' + SUBSTRING(@ColumnName, 1, LEN(@ColumnName) - 2) + @NL
				FROM #ForeignKeys
				WHERE SourceColumn = @ColumnName
			--END ELSE BEGIN
			--	SELECT @SQL_Joins = @SQL_Joins + 'JOIN RDS.' + TargetTable + ' ' + TargetTable + @NL
			--	FROM #ForeignKeys
			--	WHERE SourceColumn = @ColumnName
			--END

			--IF EXISTS (SELECT 1 FROM #ForeignKeys WHERE SourceColumn = @ColumnName AND (TargetTable IN ('DimPeople', 'DimChildOutcomeSummaries', 'DimCharterSchoolAuthorizers', 'DimSeclusionOrRestraintStatuses', 'DimLanguages', 'DimGradeLevels', 'DimSchoolYears', 'DimIdeaDisabilityTypes', 'DimAssessmentSubtests', 'DimDates') OR (TargetTable = 'DimLeas' AND SourceColumn <> 'LeaId'))) BEGIN
				SELECT @SQL_Joins = @SQL_Joins + '	ON Fact.' + SourceColumn + ' = ' + SUBSTRING(@ColumnName, 1, LEN(@ColumnName) - 2) + '.' + TargetColumn + @NL 
				FROM #ForeignKeys
				WHERE SourceColumn = @ColumnName
			--END ELSE BEGIN
			--	SELECT @SQL_Joins = @SQL_Joins + '	ON Fact.' + SourceColumn + ' = ' + TargetTable + '.' + TargetColumn + @NL 
			--	FROM #ForeignKeys
			--	WHERE SourceColumn = @ColumnName
			--END

			DECLARE dimColumnCursor CURSOR FOR 
			SELECT col.TABLE_NAME, col.COLUMN_NAME
			FROM INFORMATION_SCHEMA.columns col
			JOIN #ForeignKeys fk
				ON col.TABLE_NAME = fk.TargetTable
				AND col.TABLE_SCHEMA = 'RDS'
			WHERE fk.SourceTable = @TableName
				AND fk.SourceColumn = @ColumnName
				AND COLUMN_NAME NOT LIKE '%Id' 
			ORDER BY col.Ordinal_Position 

			OPEN dimColumnCursor  
			FETCH NEXT FROM dimColumnCursor INTO @DimTableName, @DimColumnName 

			WHILE @@FETCH_STATUS = 0  
			BEGIN  
				IF Len(@SQL_Columns) > 0 
					SELECT @SQL_Columns = @SQL_Columns + '	, '

				--IF @DimTableName IN ('DimPeople', 'DimChildOutcomeSummaries', 'DimCharterSchoolAuthorizers', 'DimSeclusionOrRestraintStatuses', 'DimLanguages', 'DimGradeLevels', 'DimSchoolYears', 'DimIdeaDisabilityTypes', 'DimAssessmentSubtests', 'DimDates') OR (@DimTableName = 'DimLeas' AND @ColumnName <> 'LeaId')
					SELECT @SQL_Columns = @SQL_Columns + SUBSTRING(@ColumnName, 1, LEN(@ColumnName) - 2) + '.' + @DimColumnName 
				--ELSE 				
				--	SELECT @SQL_Columns = @SQL_Columns + @DimTableName + '.' + @DimColumnName 
				
				--IF @DimTableName IN ('DimPeople', 'DimChildOutcomeSummaries', 'DimCharterSchoolAuthorizers', 'DimSeclusionOrRestraintStatuses', 'DimLanguages', 'DimGradeLevels', 'DimSchoolYears', 'DimIdeaDisabilityTypes', 'DimAssessmentSubtests', 'DimDates') OR (@DimTableName = 'DimLeas' AND @ColumnName <> 'LeaId') BEGIN
					SELECT @SQL_Columns = @SQL_Columns + ' AS ' + SUBSTRING(@ColumnName, 1, LEN(@ColumnName) - 2) + '_' + @DimColumnName
				--END ELSE IF @DimTableName IN ('DimSeas', 'DimIeus', 'DimLeas', 'DimK12Schools', 'DimAeProviders') BEGIN
				--	SELECT @SQL_Columns = @SQL_Columns + ' AS ' + SUBSTRING(LEFT(@DimTableName, LEN(@DimTableName) - 1) , 4, 100) + '_' + @DimColumnName
				--END 

				SELECT @SQL_Columns = @SQL_Columns + @NL

				FETCH NEXT FROM dimColumnCursor INTO @DimTableName, @DimColumnName
			END 

			CLOSE dimColumnCursor  
			DEALLOCATE dimColumnCursor 
		END	
		ELSE BEGIN
			IF Len(@SQL_Columns) > 0 
				SELECT @SQL_Columns = @SQL_Columns + '	, '
				
			SELECT @SQL_Columns = @SQL_Columns + 'fact.' + @ColumnName + @NL

		END

		FETCH NEXT FROM columnCursor INTO @ColumnName
	END 

	CLOSE columnCursor  
	DEALLOCATE columnCursor 

	DROP TABLE #ForeignKeys

	exec ('CREATE OR ALTER VIEW RDS.vw' + @TableName + 'Parquet AS ' + @SQL + @SQL_Columns + @SQL_Joins)
	   
	DECLARE @printString NVARCHAR(MAX);
	set @printString = 	@SQL + @SQL_Columns + @SQL_Joins 
	DECLARE @CurrentEnd BIGINT; /* track the length of the next substring */
	DECLARE @offset tinyint; /*tracks the amount of offset needed */
	set @printString = replace(  replace(@printString, char(13) + char(10), char(10))   , char(13), char(10))

	WHILE LEN(@printString) > 1
	BEGIN
		IF CHARINDEX(CHAR(10), @printString) between 1 AND 4000
		BEGIN
				SET @CurrentEnd =  CHARINDEX(char(10), @printString) -1
				set @offset = 2
		END
		ELSE
		BEGIN
				SET @CurrentEnd = 4000
				set @offset = 1
		END   
		PRINT SUBSTRING(@printString, 1, @CurrentEnd) 
		set @printString = SUBSTRING(@printString, @CurrentEnd+@offset, LEN(@printString))   
	END

    FETCH NEXT FROM tableCursor INTO @TableName
END 


CLOSE tableCursor  
DEALLOCATE tableCursor 



