import canonicalLaneMathlib.AdmissibleClass
import CoalgebrasComodulesCoringsTheoremCanonicalLaneLean.CoalgebraDefinitions

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CoalgWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse