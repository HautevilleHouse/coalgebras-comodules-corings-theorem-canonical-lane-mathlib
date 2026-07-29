import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure CoringPackage where
  algebra : Type u
  coringComultiplication : algebra → algebra ⊗ algebra
  coringCounit : algebra → algebra
  coringCoassociativity : Prop
  coringCounitLeft : Prop
  coringCounitRight : Prop

structure CoringEvidence (C : CoringPackage) where
  coringCoassociativityClosed : C.coringCoassociativity
  coringCounitLeftClosed : C.coringCounitLeft
  coringCounitRightClosed : C.coringCounitRight

def CoringClosed (C : CoringPackage) : Prop :=
  C.coringCoassociativity ∧ C.coringCounitLeft ∧ C.coringCounitRight

theorem coring_closed_from_evidence (C : CoringPackage) (E : CoringEvidence C) : CoringClosed C := by
  exact And.intro E.coringCoassociativityClosed (And.intro E.coringCounitLeftClosed E.coringCounitRightClosed)

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse