import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoalgebrasComodulesCoringsTheoremCanonicalLaneLean

structure CoalgObject where
  carrier : Type u
  comultiplication : carrier → carrier ⊗ carrier
  counit : carrier → R
  coassociativity : Prop
  counitality : Prop
  coassociativityTerm : coassociativity
  counitalityTerm : counitality

structure ComoduleObject {C : CoalgObject} where
  carrier : Type u
  coaction : carrier → carrier ⊗ C
  coassociativity : Prop
  counitality : Prop
  coassociativityTerm : coassociativity
  counitalityTerm : counitality

structure CoringObject where
  carrier : Type u
  comultiplication : carrier → carrier ⊗ carrier
  counit : carrier → R
  coassociativity : Prop
  counitality : Prop
  coassociativityTerm : coassociativity
  counitalityTerm : counitality

end CoalgebrasComodulesCoringsTheoremCanonicalLaneLean
end HautevilleHouse