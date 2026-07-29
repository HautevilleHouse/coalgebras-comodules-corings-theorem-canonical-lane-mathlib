import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure CoalgebraPackage where
  coefficientRing : Type u
  comultiplication : coefficientRing → coefficientRing ⊗ coefficientRing
  counit : coefficientRing → coefficientRing
  coassociativity : Prop
  counitLeft : Prop
  counitRight : Prop

structure CoalgebraEvidence (C : CoalgebraPackage) where
  coassociativityClosed : C.coassociativity
  counitLeftClosed : C.counitLeft
  counitRightClosed : C.counitRight

def CoalgebraClosed (C : CoalgebraPackage) : Prop :=
  C.coassociativity ∧ C.counitLeft ∧ C.counitRight

theorem coalgebra_closed_from_evidence (C : CoalgebraPackage) (E : CoalgebraEvidence C) : CoalgebraClosed C := by
  exact And.intro E.coassociativityClosed (And.intro E.counitLeftClosed E.counitRightClosed)

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse