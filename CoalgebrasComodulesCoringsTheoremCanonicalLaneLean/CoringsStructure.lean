import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure CoringsPackage (R : Type u) [CommRing R] where
  carrier : Type v
  coring : Coalg R (carrier ⊗[R] carrier)
  comultiplication : carrier →ₗ[R] carrier ⊗[R] carrier ⊗[R] carrier
  counit : carrier →ₗ[R] R
  coassociativity : Prop
  counitProperty : Prop

structure CoringsEvidence {R : Type u} [CommRing R] (C : CoringsPackage R) where
  coassociativityClosed : C.coassociativity
  counitPropertyClosed : C.counitProperty

def CoringsClosed {R : Type u} [CommRing R] (C : CoringsPackage R) : Prop :=
  C.coassociativity ∧ C.counitProperty

theorem corings_closed_from_evidence {R : Type u} [CommRing R]
    (C : CoringsPackage R) (E : CoringsEvidence C) : CoringsClosed C := by
  exact And.intro E.coassociativityClosed E.counitPropertyClosed

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse