import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure HopfAlgebraBridge (R : Type u) [CommRing R] where
  coalgebra : CoalgebraStructure R
  bialgebra : Prop
  antipode : coalgebra.carrier → coalgebra.carrier
  antipodeLeft : ∀ x : coalgebra.carrier, (map (antipode) (id := id)) (coalgebra.comultiplication x) = (coalgebra.counit x) ⊗ 1
  antipodeRight : ∀ x : coalgebra.carrier, (map (id := id) (antipode)) (coalgebra.comultiplication x) = 1 ⊗ (coalgebra.counit x)

structure HopfAlgebraBridgeEvidence (R : Type u) [CommRing R] (H : HopfAlgebraBridge R) where
  bialgebraClosed : H.bialgebra
  antipodeLeftClosed : H.antipodeLeft
  antipodeRightClosed : H.antipodeRight

def HopfAlgebraBridgeClosed (R : Type u) [CommRing R] (H : HopfAlgebraBridge R) : Prop :=
  H.bialgebra ∧ H.antipodeLeft ∧ H.antipodeRight

theorem hopf_algebra_bridge_closed_from_evidence (R : Type u) [CommRing R] (H : HopfAlgebraBridge R) (E : HopfAlgebraBridgeEvidence R H) : HopfAlgebraBridgeClosed R H := by
  exact And.intro E.bialgebraClosed (And.intro E.antipodeLeftClosed E.antipodeRightClosed)

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse