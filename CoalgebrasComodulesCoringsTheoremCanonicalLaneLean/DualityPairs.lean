import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoalgebrasComodulesCoringsTheoremCanonicalLaneLean.CoalgebraStructure
import HautevilleHouse.CoalgebrasComodulesCoringsTheoremCanonicalLaneLean.ComoduleStructure

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure DualityPairPackage {R : Type u} [CommRing R] (C : CoalgebraPackage R) (M : ComodulePackage C) where
  pairingMap : M.carrier ⊗[R] M.carrier → R
  nondegenerateLeft : Prop
  nondegenerateRight : Prop
  compatibilityWithComultiplication : Prop

structure DualityPairEvidence {R : Type u} [CommRing R] {C : CoalgebraPackage R} {M : ComodulePackage C} (D : DualityPairPackage C M) where
  nondegenerateLeftClosed : D.nondegenerateLeft
  nondegenerateRightClosed : D.nondegenerateRight
  compatibilityWithComultiplicationClosed : D.compatibilityWithComultiplication

def DualityPairClosed {R : Type u} [CommRing R] {C : CoalgebraPackage R} {M : ComodulePackage C} (D : DualityPairPackage C M) : Prop :=
  D.nondegenerateLeft ∧ D.nondegenerateRight ∧ D.compatibilityWithComultiplication

theorem duality_pair_closed_from_evidence {R : Type u} [CommRing R] {C : CoalgebraPackage R} {M : ComodulePackage C} (D : DualityPairPackage C M) (E : DualityPairEvidence D) : DualityPairClosed D := by
  exact And.intro E.nondegenerateLeftClosed (And.intro E.nondegenerateRightClosed E.compatibilityWithComultiplicationClosed)

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse
