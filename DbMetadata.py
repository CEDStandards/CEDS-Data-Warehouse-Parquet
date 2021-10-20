from DbTask import DbTask
from sql.SqlStatement import SqlStatement


class DbMetadata(DbTask):

    def __init__(self):
        DbTask.__init__(self)
        self.cursor = self.dbConnection.getCursor()

    def executeQuery(self):
        for row in self.cursor.tables():
            if row.table_type == 'TABLE' and (row.table_name.startswith('Fact') or row.table_name.startswith('Dim')):
                print(row.table_name)

    def getK12ColNames(self):
        print('\nColumn names for FactK12StudentCounts are:')
        for col in self.cursor.columns(table='FactK12StudentCounts'):
            print(col.column_name)

if __name__ == "__main__":
    meta =  DbMetadata()
    meta.executeQuery()
    meta.getK12ColNames()