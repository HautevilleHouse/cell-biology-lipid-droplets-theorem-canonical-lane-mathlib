import CellBiologyLipidDropletsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyLipidDropletsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LipidDropletAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LipidDropletWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyLipidDropletsTheoremCanonicalLaneLean
end HautevilleHouse
