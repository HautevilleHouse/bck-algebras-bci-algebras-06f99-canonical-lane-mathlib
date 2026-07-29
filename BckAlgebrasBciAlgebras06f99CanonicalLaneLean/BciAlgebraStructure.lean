import BckAlgebrasBciAlgebras06f99CanonicalLaneLean.BckAlgebraStructure

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

structure BciAlgebra (A : Type) where
  zero : A
  star : A → A → A
  axioms : Prop
  bckEmbed : BckAlgebra A
  consistency : Prop

structure BciAlgebraEvidence (B : BciAlgebra A) where
  axiomsClosed : B.axioms
  consistencyClosed : B.consistency

def BciAlgebraClosed (B : BciAlgebra A) : Prop :=
  B.axioms ∧ B.consistency

theorem bci_algebra_closed_from_evidence (B : BciAlgebra A) (E : BciAlgebraEvidence B) :
    BciAlgebraClosed B := by
  exact And.intro E.axiomsClosed E.consistencyClosed

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse
