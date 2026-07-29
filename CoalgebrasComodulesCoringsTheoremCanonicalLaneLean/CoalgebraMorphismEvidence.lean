import canonicalLaneMathlib.AdmissibleClass
import CoalgebrasComodulesCoringsTheoremCanonicalLaneLean.CoalgebraDefinitions

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure CoalgebraMorphismPackage (C D : CoalgObject) where
  map : C.carrier → D.carrier
  preservesComultiplication : Prop
  preservesCounit : Prop
  preservesComultiplicationTerm : preservesComultiplication
  preservesCounitTerm : preservesCounit

structure CoalgebraMorphismEvidence {C D : CoalgObject} (M : CoalgebraMorphismPackage C D) where
  preservesComultiplicationClosed : M.preservesComultiplication
  preservesCounitClosed : M.preservesCounit

def CoalgebraMorphismClosed {C D : CoalgObject} (M : CoalgebraMorphismPackage C D) : Prop :=
  M.preservesComultiplication ∧ M.preservesCounit

theorem coalgebra_morphism_closed_from_evidence {C D : CoalgObject} (M : CoalgebraMorphismPackage C D)
    (E : CoalgebraMorphismEvidence M) : CoalgebraMorphismClosed M := by
  exact And.intro E.preservesComultiplicationClosed E.preservesCounitClosed

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse