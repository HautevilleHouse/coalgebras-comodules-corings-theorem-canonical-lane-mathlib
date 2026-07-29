import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure CoalgebraAdmittedObject where
  space : Type
  structure : String
  closureProperty : Prop
  conclusion : closureProperty

def CoalgebraWitnessClosed (O : CoalgebraAdmittedObject) : Prop :=
  O.closureProperty

theorem coalgebra_witness_closed (O : CoalgebraAdmittedObject) :
    CoalgebraWitnessClosed O := O.conclusion

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse