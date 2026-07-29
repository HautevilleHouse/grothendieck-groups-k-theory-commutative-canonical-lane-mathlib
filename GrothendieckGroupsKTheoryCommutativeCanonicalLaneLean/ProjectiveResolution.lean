import GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean.K0GroupStructure

/-!
# Projective Resolution Package
-/

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure ProjectiveResolutionPackage {R : CommRingPackage} {C : RingCategoryPackage R} {G : GrothendieckGroupExactnessPackage C} (K : K0GroupStructurePackage G) where
  projectiveModule : Type u
  resolutionExact : Prop
  resolutionFinite : Prop

def ProjectiveResolutionClosed {R : CommRingPackage} {C : RingCategoryPackage R} {G : GrothendieckGroupExactnessPackage C} {K : K0GroupStructurePackage G} (P : ProjectiveResolutionPackage K) : Prop :=
  P.resolutionExact ∧ P.resolutionFinite

theorem projective_resolution_closed {R : CommRingPackage} {C : RingCategoryPackage R} {G : GrothendieckGroupExactnessPackage C} {K : K0GroupStructurePackage G} (P : ProjectiveResolutionPackage K) (h1 : P.resolutionExact) (h2 : P.resolutionFinite) : ProjectiveResolutionClosed P := by
  exact And.intro h1 h2

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse