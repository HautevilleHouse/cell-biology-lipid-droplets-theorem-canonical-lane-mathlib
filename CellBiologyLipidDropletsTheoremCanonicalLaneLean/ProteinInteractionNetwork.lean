import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsTheoremCanonicalLaneLean

structure ProteinInteractionNetworkPackage where
  perilipinFamily : Prop
  cgi58Activation : Prop
  atglActivation : Prop
  hslActivation : Prop
  regulatoryInteractions : Prop

structure ProteinInteractionEvidence (P : ProteinInteractionNetworkPackage) where
  perilipinFamilyClosed : P.perilipinFamily
  cgi58ActivationClosed : P.cgi58Activation
  atglActivationClosed : P.atglActivation
  hslActivationClosed : P.hslActivation
  regulatoryInteractionsClosed : P.regulatoryInteractions

def ProteinInteractionClosed (P : ProteinInteractionNetworkPackage) : Prop :=
  P.perilipinFamily ∧ P.cgi58Activation ∧ P.atglActivation ∧ P.hslActivation ∧ P.regulatoryInteractions

theorem protein_interaction_closed_from_evidence (P : ProteinInteractionNetworkPackage) (E : ProteinInteractionEvidence P) : ProteinInteractionClosed P := by
  exact And.intro E.perilipinFamilyClosed (And.intro E.cgi58ActivationClosed (And.intro E.atglActivationClosed (And.intro E.hslActivationClosed E.regulatoryInteractionsClosed)))

end CellBiologyLipidDropletsTheoremCanonicalLaneLean
end HautevilleHouse