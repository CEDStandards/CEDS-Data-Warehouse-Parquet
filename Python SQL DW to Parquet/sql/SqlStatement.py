from enum import Enum 

class Statements(Enum):
    DimIeus = "vwDimIeusParquet.sql"
    DimK12Schools = "vwDimK12SchoolsParquet.sql"
    DimLeas = "vwDimLeasParquet.sql"
    DimPsInstitutions = "vwDimPsInstitutionsParquet.sql"
    DimSeas = "vwDimSeasParquet.sql"
    FactAeStudentEnrollments = "vwFactAeStudentEnrollmentsParquet.sql"
    FactK12ProgramParticipations = "vwFactK12ProgramParticipationsParquet.sql"
    FactK12StaffCounts = "vwFactK12StaffCountsParquet.sql"
    FactK12StudentAssessments = "vwFactK12StudentAssessmentsParquet.sql"
    FactK12StudentAssessmentResultAggregates = "vwFactK12StudentAssessmentsResultAggregatesParquet.sql"
    FactK12StudentAttendance = "vwFactK12StudentAttendanceParquet.sql"
    FactK12StudentCounts = "vwFactK12StudentCountsParquet.sql"
    FactK12StudentCourseSections = "vwFactK12StudentCourseSectionsParquet.sql"
    FactK12StudentDisciplines = "vwFactK12StudentDisciplinesParquet.sql"
    FactK12StudentEconomicDisadvantages = "vwFactK12StudentEconomicDisadvantagesParquet.sql"
    FactK12StudentEnrollments = "vwFactK12StudentEnrollmentsParquet.sql"
    FactK12StudentSeclusionsOrRestraints = "vwFactK12StudentSeclusionsOrRestraintsParquet.sql"
    FactOrganizationCounts = "vwFactOrganizationCountsParquet.sql"
    FactOrganizationIndicatorStatuses = "vwFactOrganizationIndicatorStatusesParquet.sql"
    FactOrganizationStatusCounts = "vwFactOrganizationStatusCountsParquet.sql"
    FactPsStudentAcademicAwards = "vwFactPsStudentAcademicAwardsParquet.sql"
    FactPsStudentAcademicRecords = "vwFactPsStudentAcademicRecordsParquet.sql"
    FactPsStudentEnrollments = "vwFactPsStudentEnrollmentsParquet.sql"
    FactSpecialEducation = "vwFactSpecialEducationParquet.sql"
    

class SqlStatement():

    def __init__(self, sqlStatementName) -> None:
        print("SQL Filename is",sqlStatementName)
        with open('sql/' + sqlStatementName, "r") as f:
            lines = f.readlines()
        self.sqlString = " ".join(lines)
        
    def getSqlString(self):
        return self.sqlString

if __name__ == "__main__":
    sqlStatement = SqlStatement("FactK12StudentCounts") 
    print(sqlStatement.getSqlString())