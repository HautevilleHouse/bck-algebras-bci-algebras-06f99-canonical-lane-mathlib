import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

structure BckBciAdmittedObject where
  carrier : Type
  operation : carrier → carrier → carrier
  zero : carrier
  axiomsBck : Prop
  axiomsBci : Prop
  conclusion : axiomsBci

structure AdmissibleClass where
  object : BckBciAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def BckBciWitnessClosed (O : BckBciAdmittedObject) : Prop :=
  O.conclusion

def admittedClosure (A : AdmissibleClass) : Prop :=
  BckBciWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse
