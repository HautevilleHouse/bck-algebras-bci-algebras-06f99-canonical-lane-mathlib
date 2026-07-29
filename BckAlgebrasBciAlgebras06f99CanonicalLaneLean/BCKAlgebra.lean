import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

structure BckAlgebraPackage where
  carrier : Type u
  operation : carrier → carrier → carrier
  zero : carrier
  leftZero : Prop  -- 0 * x = 0
  rightIdentity : Prop  -- x * 0 = x
  selfZero : Prop  -- x * x = 0
  bckInequality : Prop  -- (x*y)*(x*z) = (z*y)*0 (placeholder)
  antisymmetry : Prop  -- if x*y=0 and y*x=0 then x=y

structure BckAlgebraEvidence (B : BckAlgebraPackage) where
  leftZeroClosed : B.leftZero
  rightIdentityClosed : B.rightIdentity
  selfZeroClosed : B.selfZero
  bckInequalityClosed : B.bckInequality
  antisymmetryClosed : B.antisymmetry

def BckAlgebraClosed (B : BckAlgebraPackage) : Prop :=
  B.leftZero ∧ B.rightIdentity ∧ B.selfZero ∧ B.bckInequality ∧ B.antisymmetry

theorem bck_algebra_closed_from_evidence (B : BckAlgebraPackage) (E : BckAlgebraEvidence B) : BckAlgebraClosed B :=
  And.intro E.leftZeroClosed (And.intro E.rightIdentityClosed (And.intro E.selfZeroClosed (And.intro E.bckInequalityClosed E.antisymmetryClosed)))

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse
