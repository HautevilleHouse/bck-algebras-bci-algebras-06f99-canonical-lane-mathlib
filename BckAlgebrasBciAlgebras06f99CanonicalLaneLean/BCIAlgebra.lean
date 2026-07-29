import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BckAlgebrasBciAlgebras06f99CanonicalLaneLean.BckAlgebra

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

structure BciAlgebraPackage (B : BckAlgebraPackage) where
  extraAxiom : Prop  -- (x*y)*(x*z) = (z*y) (placeholder)

structure BciAlgebraEvidence {B : BckAlgebraPackage} (C : BciAlgebraPackage B) where
  extraAxiomClosed : C.extraAxiom

def BciAlgebraClosed {B : BckAlgebraPackage} (C : BciAlgebraPackage B) : Prop :=
  BckAlgebraClosed B ∧ C.extraAxiom

theorem bci_algebra_closed_from_evidence {B : BckAlgebraPackage} (C : BciAlgebraPackage B) (E : BciAlgebraEvidence C) (BckE : BckAlgebraEvidence B) : BciAlgebraClosed C :=
  And.intro (bck_algebra_closed_from_evidence B BckE) E.extraAxiomClosed

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse
