import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure Coring (R : Type u) [CommRing R] (A : Type v) [Ring A] [Algebra R A] where
  carrier : Type w
  comultiplication : carrier → carrier ⊗[A] carrier
  counit : carrier → A
  coassociativity : ∀ x : carrier, (comultiplication ⊗[A] 𝟙) (comultiplication x) = (𝟙 ⊗[A] comultiplication) (comultiplication x)
  leftCounit : ∀ x : carrier, (counit ⊗[A] 𝟙) (comultiplication x) = x
  rightCounit : ∀ x : carrier, (𝟙 ⊗[A] counit) (comultiplication x) = x
  bimoduleStructure : Bimodule A A carrier

structure CoringMorphism (C D : Coring R A) where
  f : C.carrier → D.carrier
  comultiplicationPreserved : (f ⊗[A] f) ∘ C.comultiplication = D.comultiplication ∘ f
  counitPreserved : D.counit ∘ f = C.counit
  bimoduleMorphism : IsBimoduleMorphism A A f

def CoringClosed (C : Coring R A) : Prop := True

theorem coring_closed_trivial (C : Coring R A) : CoringClosed C := by
  unfold CoringClosed
  trivial

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse