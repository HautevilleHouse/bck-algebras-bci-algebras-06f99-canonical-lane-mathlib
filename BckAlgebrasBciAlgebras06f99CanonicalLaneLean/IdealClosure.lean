import canonicalLaneMathlib.AdmissibleClass
import BckAlgebrasBciAlgebras06f99CanonicalLaneLean.AdmissibleClass
import BckAlgebrasBciAlgebras06f99CanonicalLaneLean.BCKAlgebra

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

structure IdealPackage {A : AdmissibleClass} (BCK : BCKAlgebraPackage A) where
  idealSubset : Set A.object.carrier
  idealAxioms : Prop
  quotientAlgebraDefined : Prop
  closureUnderImplication : Prop

structure IdealEvidence {A : AdmissibleClass} {BCK : BCKAlgebraPackage A} (I : IdealPackage BCK) where
  idealAxiomsClosed : I.idealAxioms
  quotientAlgebraDefinedClosed : I.quotientAlgebraDefined
  closureUnderImplicationClosed : I.closureUnderImplication

def IdealClosed {A : AdmissibleClass} {BCK : BCKAlgebraPackage A} (I : IdealPackage BCK) : Prop :=
  I.idealAxioms ∧ I.quotientAlgebraDefined ∧ I.closureUnderImplication

theorem ideal_closed_from_evidence {A : AdmissibleClass} {BCK : BCKAlgebraPackage A} (I : IdealPackage BCK) (E : IdealEvidence I) : IdealClosed I :=
  And.intro E.idealAxiomsClosed (And.intro E.quotientAlgebraDefinedClosed E.closureUnderImplicationClosed)

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse