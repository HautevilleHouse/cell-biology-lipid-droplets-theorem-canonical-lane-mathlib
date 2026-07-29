import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsTheoremCanonicalLaneLean

structure LipidDropletPathologyPackage where
  steatosis : Prop
  lipotoxicity : Prop
  metabolicSyndrome : Prop
  neurodegeneration : Prop
  infectiousDisease : Prop

structure LipidDropletPathologyEvidence (P : LipidDropletPathologyPackage) where
  steatosisClosed : P.steatosis
  lipotoxicityClosed : P.lipotoxicity
  metabolicSyndromeClosed : P.metabolicSyndrome
  neurodegenerationClosed : P.neurodegeneration
  infectiousDiseaseClosed : P.infectiousDisease

def LipidDropletPathologyClosed (P : LipidDropletPathologyPackage) : Prop :=
  P.steatosis ∧ P.lipotoxicity ∧
  P.metabolicSyndrome ∧ P.neurodegeneration ∧ P.infectiousDisease

theorem lipid_droplet_pathology_closed_from_evidence (P : LipidDropletPathologyPackage)
    (E : LipidDropletPathologyEvidence P) : LipidDropletPathologyClosed P := by
  exact And.intro E.steatosisClosed
    (And.intro E.lipotoxicityClosed
      (And.intro E.metabolicSyndromeClosed
        (And.intro E.neurodegenerationClosed E.infectiousDiseaseClosed)))

end CellBiologyLipidDropletsTheoremCanonicalLaneLean
end HautevilleHouse
