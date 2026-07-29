import GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean.ExactCategory

/-!
# Resolution Package
-/

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure ResolutionPackage {E : ExactCategory} (A : AbelianCategory E) where
  enoughProjectives : Prop
  enoughInjectives : Prop
  projectiveResolutionExists : Prop
  injectiveResolutionExists : Prop
  resolutionCompatibleWithK0 : Prop

structure ResolutionEvidence {E : ExactCategory} {A : AbelianCategory E}
    (R : ResolutionPackage A) where
  enoughProjectivesClosed : R.enoughProjectives
  enoughInjectivesClosed : R.enoughInjectives
  projectiveResolutionExistsClosed : R.projectiveResolutionExists
  injectiveResolutionExistsClosed : R.injectiveResolutionExists
  resolutionCompatibleWithK0Closed : R.resolutionCompatibleWithK0

def ResolutionClosed {E : ExactCategory} {A : AbelianCategory E}
    (R : ResolutionPackage A) : Prop :=
  R.enoughProjectives ∧ R.enoughInjectives ∧
  R.projectiveResolutionExists ∧ R.injectiveResolutionExists ∧
  R.resolutionCompatibleWithK0

theorem resolution_closed_from_evidence
    {E : ExactCategory} {A : AbelianCategory E}
    (R : ResolutionPackage A) (Ev : ResolutionEvidence R) :
    ResolutionClosed R := by
  exact And.intro Ev.enoughProjectivesClosed
    (And.intro Ev.enoughInjectivesClosed
      (And.intro Ev.projectiveResolutionExistsClosed
        (And.intro Ev.injectiveResolutionExistsClosed
          Ev.resolutionCompatibleWithK0Closed)))

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse