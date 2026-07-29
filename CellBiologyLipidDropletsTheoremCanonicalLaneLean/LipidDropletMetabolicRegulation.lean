import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsTheoremCanonicalLaneLean

structure LipidDropletMetabolicRegulationPackage where
  insulinSignaling : Prop
  ampkPathway : Prop
  pparGammaTranscriptionalControl : Prop
  nutrientSensingMtor : Prop
  circadianRhythmEntrainment : Prop

structure LipidDropletMetabolicRegulationEvidence (M : LipidDropletMetabolicRegulationPackage) where
  insulinSignalingClosed : M.insulinSignaling
  ampkPathwayClosed : M.ampkPathway
  pparGammaTranscriptionalControlClosed : M.pparGammaTranscriptionalControl
  nutrientSensingMtorClosed : M.nutrientSensingMtor
  circadianRhythmEntrainmentClosed : M.circadianRhythmEntrainment

def LipidDropletMetabolicRegulationClosed (M : LipidDropletMetabolicRegulationPackage) : Prop :=
  M.insulinSignaling ∧ M.ampkPathway ∧
  M.pparGammaTranscriptionalControl ∧ M.nutrientSensingMtor ∧ M.circadianRhythmEntrainment

theorem lipid_droplet_metabolic_regulation_closed_from_evidence
    (M : LipidDropletMetabolicRegulationPackage) (E : LipidDropletMetabolicRegulationEvidence M) :
    LipidDropletMetabolicRegulationClosed M := by
  exact And.intro E.insulinSignalingClosed
    (And.intro E.ampkPathwayClosed
      (And.intro E.pparGammaTranscriptionalControlClosed
        (And.intro E.nutrientSensingMtorClosed E.circadianRhythmEntrainmentClosed)))

end CellBiologyLipidDropletsTheoremCanonicalLaneLean
end HautevilleHouse