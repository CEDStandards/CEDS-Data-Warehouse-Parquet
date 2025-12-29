from DbTask import DbTask
from sql.SqlStatement import SqlStatement, Statements


class ExportAll():

    def getTableMetaData(self):
        for s in Statements:
            dbTask = DbTask()
            dbTask.sqlStatement = SqlStatement(s.value).getSqlString()
            dbTask.saveParquet(s.value.replace('.sql', '') + '.parquet')

    def getOneTable(self, tableName):
        dbTask = DbTask()
        dbTask.sqlStatement = SqlStatement(tableName).getSqlString()
        dbTask.saveParquet(tableName.replace('.sql', '') + '.parquet')

    def getOneTableFromSqlStatement(self, sql, tableName):
        dbTask = DbTask()
        dbTask.sqlStatement = sql;
        dbTask.saveParquet(tableName + '.parquet')

    def exportTablesWithoutParquetViews(self):
        """
        Finds RDS tables that don't have corresponding Parquet views and exports them
        """
        # Create a DbTask to run the query
        dbTask = DbTask()
        cursor = dbTask.dbConnection.getCursor()
        
        # SQL query to find tables without corresponding Parquet views
        query = """
        select t.TABLE_NAME
        from INFORMATION_SCHEMA.tables t
        left join INFORMATION_SCHEMA.Views v
            ON v.TABLE_NAME LIKE 'vw' + t.TABLE_NAME + 'Parquet'
        WHERE v.TABLE_NAME IS NULL
            AND t.TABLE_SCHEMA = 'RDS'
            AND t.TABLE_TYPE = 'BASE TABLE'
            AND t.TABLE_NAME NOT LIKE 'Toggle%'
            AND t.TABLE_NAME NOT LIKE 'Report%'
            AND t.TABLE_NAME NOT LIKE 'Fact%'
        ORDER BY t.TABLE_NAME
        """
        
        print("Finding RDS tables without corresponding Parquet views...")
        cursor.execute(query)
        tables = cursor.fetchall()
        
        print(f"Found {len(tables)} tables to export:")
        
        # Loop through each table and export it
        for table in tables:
            table_name = table.TABLE_NAME
            print(f"Exporting table: {table_name}")
            
            # Create SQL statement to select all from the table
            sql_statement = f"select * from RDS.{table_name}"
            
            try:
                # Call getOneTableFromSqlStatement for this table
                self.getOneTableFromSqlStatement(sql_statement, table_name)
                print(f"✓ Successfully exported: {table_name}.parquet")
            except Exception as e:
                print(f"✗ Error exporting {table_name}: {str(e)}")
        
        print(f"\nExport completed. Processed {len(tables)} tables.")


if __name__ == "__main__":
    # Export tables that don't have corresponding Parquet views
    ExportAll().exportTablesWithoutParquetViews()
    
    # Export all tables defined in Statements enum
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.DimK12AcademicAwardStatuses', 'DimK12AcademicAwardStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimChildOutcomeSummaries', 'vwDimChildOutcomeSummaries')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimComprehensiveAndTargetedSupports', 'vwDimComprehensiveAndTargetedSupports')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimCteStatuses', 'vwDimCteStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimDisabilityStatuses', 'vwDimDisabilityStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimDisciplineStatuses', 'vwDimDisciplineStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimEconomicallyDisadvantagedStatuses', 'vwDimEconomicallyDisadvantagedStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimEnglishLearnerStatuses', 'vwDimEnglishLearnerStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimFirearmDisciplineStatuses', 'vwDimFirearmDisciplineStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimFirearms', 'vwDimFirearms')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimFosterCareStatuses', 'vwDimFosterCareStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimGradeLevels', 'vwDimGradeLevels')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimHomelessnessStatuses', 'vwDimHomelessnessStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimIdeaDisabilityTypes', 'vwDimIdeaDisabilityTypes')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimIdeaStatuses', 'vwDimIdeaStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimIeusParquet', 'vwDimIeusParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimImmigrantStatuses', 'vwDimImmigrantStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimIndividualizedProgramStatuses', 'vwDimIndividualizedProgramStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimK12AcademicAwardStatuses', 'vwDimK12AcademicAwardStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimK12CourseStatuses', 'vwDimK12CourseStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimK12Demographics', 'vwDimK12Demographics')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimK12EnrollmentStatuses', 'vwDimK12EnrollmentStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimK12OrganizationStatuses', 'vwDimK12OrganizationStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimK12ProgramTypes', 'vwDimK12ProgramTypes')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimK12SchoolsParquet', 'vwDimK12SchoolsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimK12SchoolStatuses', 'vwDimK12SchoolStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimK12StaffCategories', 'vwDimK12StaffCategories')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimK12StaffStatuses', 'vwDimK12StaffStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimLanguages', 'vwDimLanguages')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimLeasParquet', 'vwDimLeasParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimMigrantStatuses', 'vwDimMigrantStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimMilitaryStatuses', 'vwDimMilitaryStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimNOrDStatuses', 'vwDimNOrDStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimPeopleParquet', 'vwDimPeopleParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimPsAcademicAwardStatuses', 'vwDimPsAcademicAwardStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimPsDemographics', 'vwDimPsDemographics')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimPsEnrollmentStatuses', 'vwDimPsEnrollmentStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimPsInstitutionsParquet', 'vwDimPsInstitutionsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimPsInstitutionStatuses', 'vwDimPsInstitutionStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimRaces', 'vwDimRaces')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimSeasParquet', 'vwDimSeasParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimSubgroups', 'vwDimSubgroups')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimTitleIIIStatuses', 'vwDimTitleIIIStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwDimTitleIStatuses', 'vwDimTitleIStatuses')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactAeStudentEnrollmentsParquet', 'vwFactAeStudentEnrollmentsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12FinancialAccountBalancesParquet', 'vwFactK12FinancialAccountBalancesParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12FinancialAccountBudgetsParquet', 'vwFactK12FinancialAccountBudgetsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12FinancialAccountGeneralLedgersParquet', 'vwFactK12FinancialAccountGeneralLedgersParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12ProgramParticipationsParquet', 'vwFactK12ProgramParticipationsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12SalarySchedulesParquet', 'vwFactK12SalarySchedulesParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12StaffCountsParquet', 'vwFactK12StaffCountsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12StudentAssessmentsParquet', 'vwFactK12StudentAssessmentsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12StudentAssessmentsResultAggregatesParquet', 'vwFactK12StudentAssessmentsResultAggregatesParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12StudentAttendanceRatesParquet', 'vwFactK12StudentAttendanceRatesParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12StudentCountsParquet', 'vwFactK12StudentCountsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12StudentCourseSectionsParquet', 'vwFactK12StudentCourseSectionsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12StudentDailyAttendancesParquet', 'vwFactK12StudentDailyAttendancesParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12StudentDisciplinesParquet', 'vwFactK12StudentDisciplinesParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12StudentEconomicDisadvantagesParquet', 'vwFactK12StudentEconomicDisadvantagesParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactK12StudentEnrollmentsParquet', 'vwFactK12StudentEnrollmentsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactOrganizationCountsParquet', 'vwFactOrganizationCountsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactOrganizationStatusCountsParquet', 'vwFactOrganizationStatusCountsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactPsStudentAcademicAwardsParquet', 'vwFactPsStudentAcademicAwardsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactPsStudentAcademicRecordsParquet', 'vwFactPsStudentAcademicRecordsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactPsStudentEnrollmentsParquet', 'vwFactPsStudentEnrollmentsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactSchoolPerformanceIndicatorsParquet', 'vwFactSchoolPerformanceIndicatorsParquet')
    # ExportAll().getOneTableFromSqlStatement('select * from RDS.vwFactSpecialEducationParquet', 'vwFactSpecialEducationParquet')
    
    # k12StudentCounts = ExportFactK12StudentCounts()
    # df = k12StudentCounts.getDataFrame()
    # df.info(verbose=True)
    # print(df['MilitaryConnectedStudentIndicatorCode'])
    #k12StudentCounts.saveParquet('k12StudentCounts.parquet')
    # k12StudentCounts.saveExcel('k12StudentCounts.xlsx')

