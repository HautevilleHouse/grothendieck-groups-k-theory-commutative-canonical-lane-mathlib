import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure SplitExactSequencePackage (A : AddCommGroupCat) (B : AddCommGroupCat) (C : AddCommGroupCat) where
  f : A ⟶ B
  g : B ⟶ C
  exactAtMiddle : f ≫ g = 0 ∧ kernel g = image f
  split : ∃ s : B ⟶ A, s ≫ f = 𝟙 A

def SplitExactSequenceClosed {A B C : AddCommGroupCat} (P : SplitExactSequencePackage A B C) : Prop :=
  P.exactAtMiddle.1 ∧ P.exactAtMiddle.2 ∧ P.split.1

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse
