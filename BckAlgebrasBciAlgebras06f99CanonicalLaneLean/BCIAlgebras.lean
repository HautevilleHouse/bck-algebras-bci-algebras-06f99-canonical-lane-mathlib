import BckAlgebrasBciAlgebras06f99CanonicalLaneLean.BCKAlgebras

namespace HautevilleHouse
namespace BckAlgebrasBciAlgebras06f99CanonicalLaneLean

structure BCIAlgebraMorphism (α β : Type u) [BCIAlgebra α] [BCIAlgebra β] where
  toFun : α → β
  map_one : toFun 1 = 1
  map_mul : ∀ a b : α, toFun (a * b) = toFun a * toFun b

theorem bci_idempotent (α : Type u) [BCIAlgebra α] (a : α) : a * a = 1 := by
  calc
    a * a = (a * a) * (a * a) := by symm; apply bc1
    _ = a * (a * (a * a)) := by apply bc2
    _ = a * (a * (a * a)) := by rfl
    _ = a * ((a * a) * (a * a)) := by apply bc2
    _ = a * (a * a) := by
      have : (a * a) * (a * a) = 1 := bc1 (a * a) (a * a)
      simpa using this
    _ = (a * a) * (a * a) := by apply bc2
    _ = 1 := bc1 (a * a) (a * a)

end BckAlgebrasBciAlgebras06f99CanonicalLaneLean
end HautevilleHouse
