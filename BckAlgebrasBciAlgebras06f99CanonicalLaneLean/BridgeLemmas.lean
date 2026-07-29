import BckAlgebrasBciAlgebras06f99CanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BckBciWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse
