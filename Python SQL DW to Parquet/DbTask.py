import pyarrow as pa
import pyarrow.parquet as pq
import os
import sys
import time
import pandas
from CedsConnection import CedsConnection

OUTPUT_DIR = './output/'

class DbTask():

    sqlStatement = None
    dataFrame = None

    def __init__(self):
        self.dbConnection = CedsConnection()
        self.checkOutputDir()
        print('SQL Statement in DbTask is', self.sqlStatement)

    def getCursor(self):
        return self.dbConnection.getCursor()

    def getDataFrame(self):
        if self.dataFrame is None:
            self.dataFrame = pandas.read_sql(self.sqlStatement, self.dbConnection.conn)
            self.dataFrame = self.dataFrame.replace(['MISSING', 'Missing'], [None, None])
        return self.dataFrame

    def checkOutputDir(self):
        if not os.path.exists(OUTPUT_DIR):
            os.mkdir(OUTPUT_DIR)

    def saveParquet(self, fileName):
        pqDataFrame = pa.Table.from_pandas(self.getDataFrame())
        pq.write_table(pqDataFrame, OUTPUT_DIR + fileName)
    
    def saveExcel(self, fileName):
        self.getDataFrame().to_excel(OUTPUT_DIR + fileName, index=False)
