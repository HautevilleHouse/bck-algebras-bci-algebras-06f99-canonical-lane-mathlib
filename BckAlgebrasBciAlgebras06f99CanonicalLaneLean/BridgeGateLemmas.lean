import HautevilleHouse.BckAlgebrasBciAlgebras06f99CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BckBciWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse
