from DbTask import DbTask
import os


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

    def exportRdsParquetViews(self):
        """
        Exports all RDS schema views that start with 'vw' and end with 'Parquet'
        to SQL files in the sql/data-warehouse-views folder
        """
        # Create output directory if it doesn't exist
        output_dir = os.path.join(os.path.dirname(__file__), 'sql', 'data-warehouse-views')
        os.makedirs(output_dir, exist_ok=True)
        
        # Query to get views from RDS schema that start with 'vw' and end with 'Parquet'.
        # Use sys.sql_modules.definition (NVARCHAR(MAX)) rather than
        # INFORMATION_SCHEMA.VIEWS.VIEW_DEFINITION (NVARCHAR(4000)) — the latter
        # silently truncates long view definitions and produces corrupt .sql files.
        view_query = """
        SELECT
            s.name  AS SCHEMA_NAME,
            v.name  AS TABLE_NAME,
            m.definition AS VIEW_DEFINITION
        FROM sys.views v
        INNER JOIN sys.schemas s ON v.schema_id = s.schema_id
        INNER JOIN sys.sql_modules m ON v.object_id = m.object_id
        WHERE s.name = 'RDS'
            AND v.name LIKE 'vw%Parquet'
        ORDER BY v.name
        """

        self.cursor.execute(view_query)
        views = self.cursor.fetchall()

        print(f"\nFound {len(views)} RDS Parquet views to export:")

        for view in views:
            view_name = view.TABLE_NAME
            view_definition = view.VIEW_DEFINITION

            # Create filename in format RDS.[ViewName].sql
            filename = f"RDS.{view_name}.sql"
            filepath = os.path.join(output_dir, filename)

            # Write view definition to file
            try:
                with open(filepath, 'w', encoding='utf-8') as f:
                    # sys.sql_modules.definition contains the full CREATE VIEW
                    # statement as originally submitted, so no CREATE prefix
                    # needs to be added.
                    f.write(view_definition)
                
                print(f"✓ Exported: {filename}")
                
            except Exception as e:
                print(f"✗ Error exporting {filename}: {str(e)}")
        
        print(f"\nExport completed. Files saved to: {output_dir}")

if __name__ == "__main__":
    meta =  DbMetadata()
    # meta.executeQuery()
    # meta.getK12ColNames()
    meta.exportRdsParquetViews()