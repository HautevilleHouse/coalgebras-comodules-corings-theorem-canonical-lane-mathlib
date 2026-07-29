import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure ComoduleStructure {R : Type u} [CommRing R] {C : CoalgebraStructure R} (carrier : Type v) [AddCommGroup carrier] [Module R carrier] where
  coaction : carrier →ₗ[R] carrier ⊗[R] C
  coassociative : ∀ x : carrier, (map (id := id) (fun (y : C) => y.comultiplication)) (coaction x) = (map (coaction) (id := id)) (coaction x)
  counitCompatibility : ∀ x : carrier, (map (id := id) (C.counit)) (coaction x) = x ⊗ₜ 1

structure ComoduleEvidence {R : Type u} [CommRing R] {C : CoalgebraStructure R} {M : Type v} [AddCommGroup M] [Module R M] (N : ComoduleStructure M) where
  coassociativeClosed : N.coassociative
  counitCompatibilityClosed : N.counitCompatibility

def ComoduleClosed {R : Type u} [CommRing R] {C : CoalgebraStructure R} {M : Type v} [AddCommGroup M] [Module R M] (N : ComoduleStructure M) : Prop :=
  N.coassociative ∧ N.counitCompatibility

theorem comodule_closed_from_evidence {R : Type u} [CommRing R] {C : CoalgebraStructure R} {M : Type v} [AddCommGroup M] [Module R M] (N : ComoduleStructure M) (E : ComoduleEvidence N) : ComoduleClosed N := by
  exact And.intro E.coassociativeClosed E.counitCompatibilityClosed

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse