import GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean.GrothendieckGroupExactness

/-!
# K0 Group Structure Package
-/

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure K0GroupStructurePackage {R : CommRingPackage} {C : RingCategoryPackage R} (G : GrothendieckGroupExactnessPackage C) where
  groupAxioms : Prop
  abelianGroup : Prop
  functoriality : Prop

def K0GroupClosed {R : CommRingPackage} {C : RingCategoryPackage R} {G : GrothendieckGroupExactnessPackage C} (K : K0GroupStructurePackage G) : Prop :=
  K.groupAxioms ∧ K.abelianGroup ∧ K.functoriality

theorem k0_group_closed {R : CommRingPackage} {C : RingCategoryPackage R} {G : GrothendieckGroupExactnessPackage C} (K : K0GroupStructurePackage G) (h1 : K.groupAxioms) (h2 : K.abelianGroup) (h3 : K.functoriality) : K0GroupClosed K := by
  exact And.intro h1 (And.intro h2 h3)

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse