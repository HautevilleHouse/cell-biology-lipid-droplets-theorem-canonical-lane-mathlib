import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsTheoremCanonicalLaneLean

structure LipidMetabolismPathwayPackage where
  triglycerideSynthesis : Prop
  lipolysisPathway : Prop
  betaOxidation : Prop
  lipidTransport : Prop
  metabolicSignaling : Prop

structure LipidMetabolismEvidence (M : LipidMetabolismPathwayPackage) where
  triglycerideSynthesisClosed : M.triglycerideSynthesis
  lipolysisPathwayClosed : M.lipolysisPathway
  betaOxidationClosed : M.betaOxidation
  lipidTransportClosed : M.lipidTransport
  metabolicSignalingClosed : M.metabolicSignaling

def LipidMetabolismClosed (M : LipidMetabolismPathwayPackage) : Prop :=
  M.triglycerideSynthesis ∧ M.lipolysisPathway ∧ M.betaOxidation ∧ M.lipidTransport ∧ M.metabolicSignaling

theorem lipid_metabolism_closed_from_evidence (M : LipidMetabolismPathwayPackage) (E : LipidMetabolismEvidence M) : LipidMetabolismClosed M := by
  exact And.intro E.triglycerideSynthesisClosed (And.intro E.lipolysisPathwayClosed (And.intro E.betaOxidationClosed (And.intro E.lipidTransportClosed E.metabolicSignalingClosed)))

end CellBiologyLipidDropletsTheoremCanonicalLaneLean
end HautevilleHouse