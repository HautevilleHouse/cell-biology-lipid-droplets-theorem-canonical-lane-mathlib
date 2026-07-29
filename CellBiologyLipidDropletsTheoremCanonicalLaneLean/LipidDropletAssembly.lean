import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLipidDropletsTheoremCanonicalLaneLean

structure LDProteinAssemblyPackage where
  seipinRecruitment : Prop
  perilipinBinding : Prop
  lipidSynthesisCoupling : Prop
  dropletBuddingCompetence : Prop

structure LDProteinAssemblyEvidence (P : LDProteinAssemblyPackage) where
  seipinRecruitmentClosed : P.seipinRecruitment
  perilipinBindingClosed : P.perilipinBinding
  lipidSynthesisCouplingClosed : P.lipidSynthesisCoupling
  dropletBuddingCompetenceClosed : P.dropletBuddingCompetence

def LDProteinAssemblyClosed (P : LDProteinAssemblyPackage) : Prop :=
  P.seipinRecruitment ∧ P.perilipinBinding ∧ P.lipidSynthesisCoupling ∧ P.dropletBuddingCompetence

theorem ld_protein_assembly_closed_from_evidence (P : LDProteinAssemblyPackage) (E : LDProteinAssemblyEvidence P) : LDProteinAssemblyClosed P := by
  exact And.intro E.seipinRecruitmentClosed (And.intro E.perilipinBindingClosed (And.intro E.lipidSynthesisCouplingClosed E.dropletBuddingCompetenceClosed))

end CellBiologyLipidDropletsTheoremCanonicalLaneLean
end HautevilleHouse