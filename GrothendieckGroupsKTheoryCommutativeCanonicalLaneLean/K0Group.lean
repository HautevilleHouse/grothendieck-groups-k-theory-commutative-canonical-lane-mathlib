import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean.GrothendieckGroupConstruction

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure K0GroupPackage (R : CommRingCat) where
  projModules : Type u
  stableIsomorphism : projModules → projModules → Prop
  relations : ∀ (P Q : projModules), (SplitExactSequencePackage P Q P) → (P ⊎ Q) ~ (P)
  grothendieckGroup : GrothendieckGroupPackage (ModuleCat R)

def K0GroupClosed (R : CommRingCat) (P : K0GroupPackage R) : Prop :=
  GrothendieckGroupClosed P.grothendieckGroup

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse
