from DbTask import DbTask
from sql.SqlStatement import SqlStatement


class ExportFactK12StudentCounts(DbTask):

    def __init__(self):
        DbTask.__init__(self)
        self.sqlStatement = SqlStatement('K12StudentCounts').getSqlString()

    def getTableMetaData(self):
        for row in self.getCursor().tables(tableType='Table'):
            print(row.table_name)

if __name__ == "__main__":
    ExportFactK12StudentCounts().getTableMetaData()
    # k12StudentCounts = ExportFactK12StudentCounts()
    # df = k12StudentCounts.getDataFrame()
    # df.info(verbose=True)
    # print(df['MilitaryConnectedStudentIndicatorCode'])
    # k12StudentCounts.saveParquet('k12StudentCounts.parquet')
    # k12StudentCounts.saveExcel('k12StudentCounts.xlsx')

