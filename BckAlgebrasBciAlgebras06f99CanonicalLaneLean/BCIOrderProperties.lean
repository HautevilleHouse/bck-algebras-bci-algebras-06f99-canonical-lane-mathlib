import BckAlgebrasBciAlgebras06f99CanonicalLaneLean.BCIAlgebras

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

def le (α : Type u) [BCIAlgebra α] (a b : α) : Prop :=
  a * b = 1

instance (α : Type u) [BCIAlgebra α] : Preorder α where
  le := le α
  le_refl a := by
    unfold le
    exact bci_idempotent α a
  le_trans a b c h1 h2 := by
    unfold le at *
    calc
      a * c = (a * b) * (b * c) := by
        apply (bc2 a b c).symm
      _ = 1 * 1 := by simp [h1, h2]
      _ = 1 := by simp

theorem le_antisymm (α : Type u) [BCIAlgebra α] (a b : α) (h1 : a ≤ b) (h2 : b ≤ a) : a = b := by
  unfold le at h1 h2
  apply bc3 a b
  exact And.intro h1 h2

instance (α : Type u) [BCIAlgebra α] : PartialOrder α :=
  { inferInstanceAs (Preorder α) with le_antisymm := le_antisymm α }

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse