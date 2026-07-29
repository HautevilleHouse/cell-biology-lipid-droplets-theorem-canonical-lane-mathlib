import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsTheoremCanonicalLaneLean

structure LipidDropletCell where
  neutralLipidCore : Type
  phospholipidMonolayer : Type
  associatedProteins : Type
  size : ℝ
  lipidComposition : Prop
  sizeTerm : size ≥ 0

defaultCell : LipidDropletCell :=
  { neutralLipidCore := Type
    phospholipidMonolayer := Type
    associatedProteins := Type
    size := 1.0
    lipidComposition := True
    sizeTerm := by linarith
  }

structure LipidDropletAdmittedObject where
  cell : LipidDropletCell
  biogenesisClosed : Prop
  catabolismClosed : Prop
  conclusion : biogenesisClosed ∧ catabolismClosed

end CellBiologyLipidDropletsTheoremCanonicalLaneLean
end HautevilleHouse