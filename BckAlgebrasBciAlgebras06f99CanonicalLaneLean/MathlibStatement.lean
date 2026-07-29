import canonicalLaneMathlib.AdmissibleClass
import BCKAlgebrasBCIAlgebras06f99CanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BCKAlgebrasBCIAlgebras06f99CanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

open HautevilleHouse.CanonicalLaneMathlibCore

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "BCKAlgebrasBCIAlgebras06f99CanonicalLaneLean",
  theoremObject := "BCK/BCI Algebras Closure",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem theorem_specific_endgame_pilot_checked :
    ∀ A : AdmissibleClass, ConstrainedBCKBCIClosure A := by
  intro A
  exact constrained_bck_bci_endgame A

end BCKAlgebrasBCIAlgebras06f99CanonicalLaneLean
end HautevilleHouse