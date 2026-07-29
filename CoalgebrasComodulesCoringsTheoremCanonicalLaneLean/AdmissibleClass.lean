import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure AdmittedCoalgebraObject where
  carrier : Type
  coalgebraStructure : Prop
  comoduleStructure : Prop
  coringsStructure : Prop
  conclusion : coalgebraStructure ∧ comoduleStructure ∧ coringsStructure

structure AdmissibleClass where
  object : AdmittedCoalgebraObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.coalgebraStructure ∧ A.object.comoduleStructure ∧ A.object.coringsStructure) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse