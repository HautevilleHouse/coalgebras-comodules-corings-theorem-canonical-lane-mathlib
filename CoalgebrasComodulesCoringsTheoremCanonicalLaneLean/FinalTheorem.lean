import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

def ConstrainedCoalgebraComoduleCoringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coalgebra_comodule_coring_endgame (A : AdmissibleClass) : ConstrainedCoalgebraComoduleCoringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse