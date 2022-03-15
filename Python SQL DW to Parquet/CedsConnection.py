import pyodbc
import json


class CedsConnection():

    def __init__(self) -> None:
        connectionString = self.getConnectionString()
        print(connectionString)
        self.conn = pyodbc.connect(connectionString)

    def getConnectionString(self) -> str:
        connFile = open('connection.json', "r")
        conn = json.loads(connFile.read())
        return (f'Driver={conn["driver"]};Server={conn["server"]};'
                f'Database={conn["database"]};'
                f'UID={conn["uid"]};PWD={conn["password"]}')

    def getCursor(self) -> pyodbc.Cursor:
        return self.conn.cursor()
