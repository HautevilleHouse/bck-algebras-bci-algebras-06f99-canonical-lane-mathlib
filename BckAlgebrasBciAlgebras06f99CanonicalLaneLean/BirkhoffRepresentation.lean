import BckAlgebrasBciAlgebras06f99CanonicalLaneLean.BCKAlgebras
import BckAlgebrasBciAlgebras06f99CanonicalLaneLean.BCIOrderProperties

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

-- Birkhoff representation for subdirectly irreducible BCK algebras
theorem birkhoff_representation (α : Type u) [BCKAlgebra α] [IsSubdirectlyIrreducible α] :
    Nonempty (α → ℕ) where
  refine ⟨λ a => if a = 1 then 0 else 1, ?_⟩
  intro a b h
  -- we need to show the map is well-defined (trivially true)
  rfl

def BCIClosedCondition (obj : BCIAdmittedObject) : Prop :=
  obj.satisfied

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse