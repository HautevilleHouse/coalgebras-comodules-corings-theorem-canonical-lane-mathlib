import canonicalLaneMathlib.AdmissibleClass
import CoalgebrasComodulesCoringsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse