import Mathlib.Algebra.Order.Kleene
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

structure BCKAlgebra (α : Type u) where
  mul : α → α → α
  one : α
  mul_assoc : ∀ a b c : α, mul (mul a b) c = mul a (mul b c)
  mul_one : ∀ a : α, mul a one = a
  one_mul : ∀ a : α, mul one a = a
  mul_comm : ∀ a b : α, mul a b = mul b a
  -- BCK specific axioms
  bc1 : ∀ a b : α, mul a (mul b a) = one
  bc2 : ∀ a b : α, mul (mul a b) (mul b c) = mul (mul a b) (mul a c)
  bc3 : ∀ a b : α, mul a b = one ∧ mul b a = one → a = b

structure BCIAlgebra (α : Type u) extends BCKAlgebra α where
  bci_ax : ∀ a b : α, mul a (mul b c) = mul b (mul a c)

-- Example: BCK algebra on natural numbers with truncation
instance : BCKAlgebra ℕ where
  mul := λ a b => if a ≤ b then 1 else a - b
  one := 1
  mul_assoc := sorry
  mul_one := sorry
  one_mul := sorry
  mul_comm := sorry
  bc1 := sorry
  bc2 := sorry
  bc3 := sorry

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse
