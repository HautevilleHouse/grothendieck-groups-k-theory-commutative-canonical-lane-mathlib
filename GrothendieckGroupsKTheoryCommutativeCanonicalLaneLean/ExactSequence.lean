import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure ExactSequence (C : AdditiveCategory) where
  objects : ℕ → C.Obj
  morphisms : ∀ (n : ℕ), C.Hom (objects n) (objects (n+1))
  exactAt : ∀ (n : ℕ), Prop

structure ExactSequenceEvidence {C : AdditiveCategory} (E : ExactSequence C) where
  exactAtClosed : ∀ n, E.exactAt n

def ExactSequenceClosed {C : AdditiveCategory} (E : ExactSequence C) : Prop :=
  ∀ n, E.exactAt n

theorem exact_sequence_closed_from_evidence {C : AdditiveCategory} (E : ExactSequence C) (Ev : ExactSequenceEvidence E) : ExactSequenceClosed E := by
  intro n
  exact Ev.exactAtClosed n

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse