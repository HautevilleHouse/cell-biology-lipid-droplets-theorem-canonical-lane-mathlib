import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsTheoremCanonicalLaneLean

structure LipidMetabolismRegulationPackage where
  fattyAcidUptake : Prop
  triglycerideSynthesis : Prop
  lipolysis : Prop
  betaOxidation : Prop
  sterolRegulation : Prop

structure LipidMetabolismRegulationEvidence (P : LipidMetabolismRegulationPackage) where
  fattyAcidUptakeClosed : P.fattyAcidUptake
  triglycerideSynthesisClosed : P.triglycerideSynthesis
  lipolysisClosed : P.lipolysis
  betaOxidationClosed : P.betaOxidation
  sterolRegulationClosed : P.sterolRegulation

def LipidMetabolismRegulationClosed (P : LipidMetabolismRegulationPackage) : Prop :=
  P.fattyAcidUptake ∧ P.triglycerideSynthesis ∧
  P.lipolysis ∧ P.betaOxidation ∧ P.sterolRegulation

theorem lipid_metabolism_regulation_closed_from_evidence (P : LipidMetabolismRegulationPackage)
    (E : LipidMetabolismRegulationEvidence P) : LipidMetabolismRegulationClosed P := by
  exact And.intro E.fattyAcidUptakeClosed
    (And.intro E.triglycerideSynthesisClosed
      (And.intro E.lipolysisClosed
        (And.intro E.betaOxidationClosed E.sterolRegulationClosed)))

end CellBiologyLipidDropletsTheoremCanonicalLaneLean
end HautevilleHouse
