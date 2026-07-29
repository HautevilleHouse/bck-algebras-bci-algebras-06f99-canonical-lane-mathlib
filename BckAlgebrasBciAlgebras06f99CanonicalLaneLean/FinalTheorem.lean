import HautevilleHouse.BckAlgebrasBciAlgebras06f99CanonicalLaneLean.BridgeGateLemmas

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

def ConstrainedBckBciClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bck_bci_endgame (A : AdmissibleClass) :
    ConstrainedBckBciClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse
