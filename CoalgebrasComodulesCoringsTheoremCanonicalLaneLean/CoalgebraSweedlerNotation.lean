import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure SweedlerNotationPackage {R : Type u} [CommRing R] (C : CoalgebraPackage R) where
  sigmaNotation : C.carrier → List R
  deltaNotation : C.carrier → List (List R)
  notationConsistency : Prop

structure SweedlerNotationEvidence {R : Type u} [CommRing R] {C : CoalgebraPackage R}
    (S : SweedlerNotationPackage C) where
  notationConsistencyClosed : S.notationConsistency

def SweedlerNotationClosed {R : Type u} [CommRing R] {C : CoalgebraPackage R}
    (S : SweedlerNotationPackage C) : Prop :=
  S.notationConsistency

theorem sweedler_notation_closed {R : Type u} [CommRing R] {C : CoalgebraPackage R}
    (S : SweedlerNotationPackage C) (E : SweedlerNotationEvidence S) :
    SweedlerNotationClosed S := by
  exact E.notationConsistencyClosed

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse