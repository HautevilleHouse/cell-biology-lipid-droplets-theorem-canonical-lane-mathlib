import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsTheoremCanonicalLaneLean

structure BiogenesisRegulationPackage where
  seipinDependent : Prop
  erContactSites : Prop
  lipidSynthesisCoupling : Prop
  dropletNucleation : Prop

structure BiogenesisEvidence (B : BiogenesisRegulationPackage) where
  seipinDependentClosed : B.seipinDependent
  erContactSitesClosed : B.erContactSites
  lipidSynthesisCouplingClosed : B.lipidSynthesisCoupling
  dropletNucleationClosed : B.dropletNucleation

def BiogenesisClosed (B : BiogenesisRegulationPackage) : Prop :=
  B.seipinDependent ∧ B.erContactSites ∧ B.lipidSynthesisCoupling ∧ B.dropletNucleation

theorem biogenesis_closed_from_evidence (B : BiogenesisRegulationPackage) (E : BiogenesisEvidence B) : BiogenesisClosed B := by
  exact And.intro E.seipinDependentClosed (And.intro E.erContactSitesClosed (And.intro E.lipidSynthesisCouplingClosed E.dropletNucleationClosed))

end CellBiologyLipidDropletsTheoremCanonicalLaneLean
end HautevilleHouse