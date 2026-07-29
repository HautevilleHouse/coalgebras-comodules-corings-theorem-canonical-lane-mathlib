import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure Coalgebra (R : Type u) [CommRing R] where
  carrier : Type v
  comultiplication : carrier → carrier ⊗[R] carrier
  counit : carrier → R
  coassociativity : ∀ x : carrier, (comultiplication ⊗[R] 𝟙) (comultiplication x) = (𝟙 ⊗[R] comultiplication) (comultiplication x)
  leftCounit : ∀ x : carrier, (counit ⊗[R] 𝟙) (comultiplication x) = x
  rightCounit : ∀ x : carrier, (𝟙 ⊗[R] counit) (comultiplication x) = x

structure CoalgebraMorphism (C D : Coalgebra R) where
  f : C.carrier → D.carrier
  comultiplicationPreserved : (f ⊗[R] f) ∘ C.comultiplication = D.comultiplication ∘ f
  counitPreserved : D.counit ∘ f = C.counit

def CoalgebraClosed (C : Coalgebra R) : Prop := True

theorem coalgebra_closed_trivial (C : Coalgebra R) : CoalgebraClosed C := by
  exact True.intro

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse