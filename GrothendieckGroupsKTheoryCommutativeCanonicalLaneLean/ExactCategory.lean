import GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean.AdditiveCategory

/-!
# Exact Category Package
-/

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure ExactCategory where
  kernelExist : Prop
  cokernelExist : Prop
  exactSequencePullingBack : Prop
  exactSequencePushingForward : Prop

structure ExactCategoryEvidence (E : ExactCategory) where
  kernelExistClosed : E.kernelExist
  cokernelExistClosed : E.cokernelExist
  exactSequencePullingBackClosed : E.exactSequencePullingBack
  exactSequencePushingForwardClosed : E.exactSequencePushingForward

def ExactCategoryClosed (E : ExactCategory) : Prop :=
  E.kernelExist ∧ E.cokernelExist ∧
  E.exactSequencePullingBack ∧ E.exactSequencePushingForward

theorem exact_category_closed_from_evidence (E : ExactCategory)
    (Ev : ExactCategoryEvidence E) : ExactCategoryClosed E := by
  exact And.intro Ev.kernelExistClosed
    (And.intro Ev.cokernelExistClosed
      (And.intro Ev.exactSequencePullingBackClosed
        Ev.exactSequencePushingForwardClosed))

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse