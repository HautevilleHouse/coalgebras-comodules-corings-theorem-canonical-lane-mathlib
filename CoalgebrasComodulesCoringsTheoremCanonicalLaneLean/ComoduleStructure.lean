import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure ComodulePackage where
  coalgebra : CoalgebraPackage
  module : Type v
  comoduleMap : module → module ⊗ coalgebra.coefficientRing
  coactionAssociativity : Prop
  coactionUnitality : Prop

structure ComoduleEvidence (M : ComodulePackage) where
  coactionAssociativityClosed : M.coactionAssociativity
  coactionUnitalityClosed : M.coactionUnitality

def ComoduleClosed (M : ComodulePackage) : Prop :=
  M.coactionAssociativity ∧ M.coactionUnitality

theorem comodule_closed_from_evidence (M : ComodulePackage) (E : ComoduleEvidence M) : ComoduleClosed M := by
  exact And.intro E.coactionAssociativityClosed E.coactionUnitalityClosed

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse