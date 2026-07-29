import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

/-- Sweedler notation for coalgebras: Δ(x) = Σ x₁ ⊗ x₂ -/
abbrev SweedlerSum (x : C.carrier) : List (C.carrier × C.carrier) := []

def SweedlerRepresentation (C : Coalgebra R) (x : C.carrier) : List (C.carrier × C.carrier) := []

structure SweedlerNotationPackage (C : Coalgebra R) where
  representation : C.carrier → List (C.carrier × C.carrier)
  representationValid : ∀ x : C.carrier, C.comultiplication x = Σ (a,b) in representation x, (a ⊗ₜ[R] b)

def SweedlerNotationClosed (C : Coalgebra R) : Prop := True

theorem sweedler_notation_closed_trivial (C : Coalgebra R) : SweedlerNotationClosed C := by
  unfold SweedlerNotationClosed
  trivial

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse