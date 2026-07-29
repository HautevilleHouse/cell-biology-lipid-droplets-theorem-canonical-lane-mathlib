import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsTheoremCanonicalLaneLean

structure LipidDropletProteomePackage where
  perilipinFamily : Prop
  seipin : Prop
  fatSpecificProteins : Prop
  lipases : Prop
  traffickingFactors : Prop

structure LipidDropletProteomeEvidence (P : LipidDropletProteomePackage) where
  perilipinFamilyClosed : P.perilipinFamily
  seipinClosed : P.seipin
  fatSpecificProteinsClosed : P.fatSpecificProteins
  lipasesClosed : P.lipases
  traffickingFactorsClosed : P.traffickingFactors

def LipidDropletProteomeClosed (P : LipidDropletProteomePackage) : Prop :=
  P.perilipinFamily ∧ P.seipin ∧
  P.fatSpecificProteins ∧ P.lipases ∧ P.traffickingFactors

theorem lipid_droplet_proteome_closed_from_evidence (P : LipidDropletProteomePackage)
    (E : LipidDropletProteomeEvidence P) : LipidDropletProteomeClosed P := by
  exact And.intro E.perilipinFamilyClosed
    (And.intro E.seipinClosed
      (And.intro E.fatSpecificProteinsClosed
        (And.intro E.lipasesClosed E.traffickingFactorsClosed)))

end CellBiologyLipidDropletsTheoremCanonicalLaneLean
end HautevilleHouse
