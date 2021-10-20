from enum import Enum 

class Statements(Enum):
    K12StudentCounts = 'FactK12StudentCountsFullyFlattened.sql'
    

class SqlStatement():

    def __init__(self, sqlStatementName) -> None:
        sqlFile = Statements[sqlStatementName].value
        print('SQL Filename is', sqlFile )
        with open('sql/'+sqlFile, 'r') as f:
            lines = f.readlines()
        self.sqlString = ' '.join(lines)
        
    def getSqlString(self):
        return self.sqlString

if __name__ == "__main__":
    sqlStatement = SqlStatement('K12StudentCounts') 
    print(sqlStatement.getSqlString())