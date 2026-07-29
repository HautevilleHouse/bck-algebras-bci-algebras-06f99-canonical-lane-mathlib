import canonicalLaneMathlib.AdmissibleClass
import BckAlgebrasBciAlgebras06f99CanonicalLaneLean.AdmissibleClass
import BckAlgebrasBciAlgebras06f99CanonicalLaneLean.BCKAlgebra

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

structure ImplicativeBridgePackage {A : AdmissibleClass} (BCK : BCKAlgebraPackage A) where
  implicativeAxioms : Prop
  adjointness : Prop
  residuation : Prop

structure ImplicativeBridgeEvidence {A : AdmissibleClass} {BCK : BCKAlgebraPackage A} (P : ImplicativeBridgePackage BCK) where
  implicativeAxiomsClosed : P.implicativeAxioms
  adjointnessClosed : P.adjointness
  residuationClosed : P.residuation

def ImplicativeBridgeClosed {A : AdmissibleClass} {BCK : BCKAlgebraPackage A} (P : ImplicativeBridgePackage BCK) : Prop :=
  P.implicativeAxioms ∧ P.adjointness ∧ P.residuation

theorem implicative_bridge_closed_from_evidence {A : AdmissibleClass} {BCK : BCKAlgebraPackage A} (P : ImplicativeBridgePackage BCK) (E : ImplicativeBridgeEvidence P) : ImplicativeBridgeClosed P :=
  And.intro E.implicativeAxiomsClosed (And.intro E.adjointnessClosed E.residuationClosed)

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse