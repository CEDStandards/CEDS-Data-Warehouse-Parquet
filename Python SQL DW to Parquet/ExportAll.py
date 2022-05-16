from DbTask import DbTask
from sql.SqlStatement import SqlStatement, Statements


class ExportAll():

    def getTableMetaData(self):
        for s in Statements:
            dbTask = DbTask()
            dbTask.sqlStatement = SqlStatement(s.value).getSqlString()
            dbTask.saveParquet(s.value.replace('.sql', '') + '.parquet')

if __name__ == "__main__":
    ExportAll().getTableMetaData()
    # k12StudentCounts = ExportFactK12StudentCounts()
    # df = k12StudentCounts.getDataFrame()
    # df.info(verbose=True)
    # print(df['MilitaryConnectedStudentIndicatorCode'])
    #k12StudentCounts.saveParquet('k12StudentCounts.parquet')
    # k12StudentCounts.saveExcel('k12StudentCounts.xlsx')

