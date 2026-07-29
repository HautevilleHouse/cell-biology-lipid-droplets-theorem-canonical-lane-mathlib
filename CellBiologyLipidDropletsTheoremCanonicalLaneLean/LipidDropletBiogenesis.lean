import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsTheoremCanonicalLaneLean

structure LipidDropletBiogenesisPackage where
  seipinRecruitment : Prop
  lipidSynthesisPathway : Prop
  dropletFormationNucleation : Prop
  growthByLipidTransfer : Prop

structure LipidDropletBiogenesisEvidence (L : LipidDropletBiogenesisPackage) where
  seipinRecruitmentClosed : L.seipinRecruitment
  lipidSynthesisPathwayClosed : L.lipidSynthesisPathway
  dropletFormationNucleationClosed : L.dropletFormationNucleation
  growthByLipidTransferClosed : L.growthByLipidTransfer

def LipidDropletBiogenesisClosed (L : LipidDropletBiogenesisPackage) : Prop :=
  L.seipinRecruitment ∧ L.lipidSynthesisPathway ∧ L.dropletFormationNucleation ∧ L.growthByLipidTransfer

theorem lipid_droplet_biogenesis_closed_from_evidence (L : LipidDropletBiogenesisPackage) (E : LipidDropletBiogenesisEvidence L) :
    LipidDropletBiogenesisClosed L := by
  exact And.intro E.seipinRecruitmentClosed
    (And.intro E.lipidSynthesisPathwayClosed
      (And.intro E.dropletFormationNucleationClosed E.growthByLipidTransferClosed))

end CellBiologyLipidDropletsTheoremCanonicalLaneLean
end HautevilleHouse