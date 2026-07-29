import BckAlgebrasBciAlgebras06f99CanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse
