import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

structure BckAlgebra (A : Type) where
  zero : A
  star : A → A → A
  axioms : Prop

structure BckAlgebraEvidence (B : BckAlgebra A) where
  axiomsClosed : B.axioms

def BckAlgebraClosed (B : BckAlgebra A) : Prop :=
  B.axioms

theorem bck_algebra_closed_from_evidence (B : BckAlgebra A) (E : BckAlgebraEvidence B) :
    BckAlgebraClosed B := by
  exact E.axiomsClosed

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse
