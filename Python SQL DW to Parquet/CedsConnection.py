import pyodbc
import json
from pathlib import Path

_CONN_FILE = Path(__file__).parent / "connection.json"


class CedsConnection():

    def __init__(self) -> None:
        connectionString = self.getConnectionString()
        self.conn = pyodbc.connect(connectionString)

    def getConnectionString(self) -> str:
        if not _CONN_FILE.exists():
            raise FileNotFoundError(
                f"connection.json not found at {_CONN_FILE}. "
                "Create it with your SQL Server credentials."
            )
        with open(_CONN_FILE, "r") as connFile:
            conn = json.loads(connFile.read())
        return (f'Driver={conn["driver"]};Server={conn["server"]};'
                f'Database={conn["database"]};'
                f'UID={conn["uid"]};PWD={conn["password"]}')

    def getCursor(self) -> pyodbc.Cursor:
        return self.conn.cursor()
