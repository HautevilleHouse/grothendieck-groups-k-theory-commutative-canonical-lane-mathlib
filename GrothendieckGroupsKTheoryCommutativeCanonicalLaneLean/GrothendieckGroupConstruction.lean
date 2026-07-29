import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean.SplitExactSequences

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure GrothendieckGroupPackage (C : Type u) [CategoryTheory.Category.{v} C] [CategoryTheory.Abelian C] where
  objects : Set (C)
  relations : ∀ (X Y Z : C) (f : X ⟶ Y) (g : Y ⟶ Z), (SplitExactSequencePackage X Y Z) → (X ⊎ Z) ~ (Y)
  quotientGroup : AddCommGroupCat
  quotientMap : FreeAbelianGroup (C) → quotientGroup

def GrothendieckGroupClosed {C : Type u} [CategoryTheory.Category.{v} C] [CategoryTheory.Abelian C] (P : GrothendieckGroupPackage C) : Prop :=
  P.quotientMap (FreeAbelianGroup.of P.objects) = 0

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse
