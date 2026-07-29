import GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean.RingCategory

/-!
# Grothendieck Group Exactness Package
-/

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure GrothendieckGroupExactnessPackage {R : CommRingPackage} (C : RingCategoryPackage R) where
  exactSequence : Type u
  shortExactSequenceLeftExact : Prop
  shortExactSequenceRightExact : Prop
  grothendieckGroupAdditivity : Prop

def GrothendieckGroupExactnessClosed {R : CommRingPackage} {C : RingCategoryPackage R} (G : GrothendieckGroupExactnessPackage C) : Prop :=
  G.shortExactSequenceLeftExact ∧ G.shortExactSequenceRightExact ∧ G.grothendieckGroupAdditivity

theorem grothendieck_group_exactness_closed {R : CommRingPackage} {C : RingCategoryPackage R} (G : GrothendieckGroupExactnessPackage C) (h1 : G.shortExactSequenceLeftExact) (h2 : G.shortExactSequenceRightExact) (h3 : G.grothendieckGroupAdditivity) : GrothendieckGroupExactnessClosed G := by
  exact And.intro h1 (And.intro h2 h3)

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse