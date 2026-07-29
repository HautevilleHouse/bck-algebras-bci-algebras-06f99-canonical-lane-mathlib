import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BCKAlgebrasBCIAlgebras06f99CanonicalLaneLean

structure BCKAlgebra where
  carrier : Type u
  mul : carrier → carrier → carrier
  zero : carrier
  axiom1 : ∀ x y z, mul (mul x y) (mul (mul x z) (mul z y)) = zero
  axiom2 : ∀ x y, mul (mul x (mul x y)) y = zero
  axiom3 : ∀ x, mul x x = zero
  axiom4 : ∀ x y, mul x y = zero → mul y x = zero → x = y

structure BCIAlgebra where
  carrier : Type u
  mul : carrier → carrier → carrier
  zero : carrier
  bci_axiom1 : ∀ x y z, mul (mul x y) z = mul (mul x z) y
  bci_axiom2 : ∀ x, mul x x = zero
  bci_axiom3 : ∀ x, mul (mul x zero) x = zero
  bci_axiom4 : ∀ x y, mul x y = zero ∧ mul y x = zero → x = y

end BCKAlgebrasBCIAlgebras06f99CanonicalLaneLean
end HautevilleHouse