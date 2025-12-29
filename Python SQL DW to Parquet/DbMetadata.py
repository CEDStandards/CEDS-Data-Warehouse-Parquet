from DbTask import DbTask
from sql.SqlStatement import SqlStatement
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
        
        # Query to get views from RDS schema that start with 'vw' and end with 'Parquet'
        view_query = """
        SELECT 
            TABLE_NAME,
            VIEW_DEFINITION
        FROM INFORMATION_SCHEMA.VIEWS 
        WHERE TABLE_SCHEMA = 'RDS' 
            AND TABLE_NAME LIKE 'vw%Parquet'
        ORDER BY TABLE_NAME
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
                    # Add header comment
                    f.write(f"-- View: RDS.{view_name}\n")
                    f.write(f"-- Generated from database export\n\n")
                    
                    # Write the view definition
                    # The view definition from INFORMATION_SCHEMA.VIEWS doesn't include CREATE VIEW
                    # so we need to add it
                    f.write(f"CREATE VIEW [RDS].[{view_name}] AS\n")
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