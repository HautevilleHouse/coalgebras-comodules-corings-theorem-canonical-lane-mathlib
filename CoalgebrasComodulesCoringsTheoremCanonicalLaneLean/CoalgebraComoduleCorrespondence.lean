import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure CoalgebraComoduleCorrespondencePackage {R : Type u} [CommRing R]
    (C : CoalgebraPackage R) (M : ComodulePackage C) where
  correspondenceMap : M.carrier →ₗ[R] C.carrier
  equivalenceCondition : Prop

structure CoalgebraComoduleCorrespondenceEvidence {R : Type u} [CommRing R]
    {C : CoalgebraPackage R} {M : ComodulePackage C}
    (P : CoalgebraComoduleCorrespondencePackage C M) where
  equivalenceConditionClosed : P.equivalenceCondition

def CoalgebraComoduleCorrespondenceClosed {R : Type u} [CommRing R]
    {C : CoalgebraPackage R} {M : ComodulePackage C}
    (P : CoalgebraComoduleCorrespondencePackage C M) : Prop :=
  P.equivalenceCondition

theorem coalgebra_comodule_correspondence_closed {R : Type u} [CommRing R]
    {C : CoalgebraPackage R} {M : ComodulePackage C}
    (P : CoalgebraComoduleCorrespondencePackage C M)
    (E : CoalgebraComoduleCorrespondenceEvidence P) :
    CoalgebraComoduleCorrespondenceClosed P := by
  exact E.equivalenceConditionClosed

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse