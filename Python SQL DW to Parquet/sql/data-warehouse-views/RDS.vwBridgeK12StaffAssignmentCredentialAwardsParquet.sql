-- View: RDS.vwBridgeK12StaffAssignmentCredentialAwardsParquet
-- Generated from database export

CREATE VIEW [RDS].[vwBridgeK12StaffAssignmentCredentialAwardsParquet] AS
CREATE   VIEW RDS.vwBridgeK12StaffAssignmentCredentialAwardsParquet AS SELECT fact.BridgeK12StaffAssignmentCredentialAwardId
	, CredentialAward.ProfessionalCertificateOrLicenseNumber AS CredentialAward_ProfessionalCertificateOrLicenseNumber
	, CredentialAward.CredentialAdvancedStandingDescription AS CredentialAward_CredentialAdvancedStandingDescription
	, CredentialAward.CredentialAdvancedStandingURL AS CredentialAward_CredentialAdvancedStandingURL
	, CredentialAward.CredentialEvidenceStatement AS CredentialAward_CredentialEvidenceStatement
	, CredentialAward.CredentialRevokedReason AS CredentialAward_CredentialRevokedReason
	, CredentialAward.CredentialAwardStartDate AS CredentialAward_CredentialAwardStartDate
	, CredentialAward.CredentialAwardEndDate AS CredentialAward_CredentialAwardEndDate
	, CredentialAward.CredentialCompletionDate AS CredentialAward_CredentialCompletionDate
	, CredentialAward.CredentialRevokedDate AS CredentialAward_CredentialRevokedDate
	, CredentialAward.CredentialSuspensionStartDate AS CredentialAward_CredentialSuspensionStartDate
	, CredentialAward.CredentialSuspensionEndDate AS CredentialAward_CredentialSuspensionEndDate
	, CredentialAward.CredentialAwardIdentifierState AS CredentialAward_CredentialAwardIdentifierState
	, FactK12StaffAssignment.FullTimeEquivalency AS FactK12StaffAssignment_FullTimeEquivalency
	, FactK12StaffAssignment.K12StaffAssignmentCount AS FactK12StaffAssignment_K12StaffAssignmentCount
FROM RDS.BridgeK12StaffAssignmentCredentialAwards fact
JOIN RDS.DimCredentialAwards CredentialAward
	ON Fact.CredentialAwardId = CredentialAward.DimCredentialAwardId
JOIN RDS.FactK12StaffAssignments FactK12StaffAssignment
	ON Fact.FactK12StaffAssignmentId = FactK12StaffAssignment.FactK12StaffAssignmentId
