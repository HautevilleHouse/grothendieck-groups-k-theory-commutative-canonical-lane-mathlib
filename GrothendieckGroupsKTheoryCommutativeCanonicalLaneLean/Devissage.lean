import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure Devissage (C : AdditiveCategory) where
  filtration : ℕ → C.Obj
  inclusions : ∀ n : ℕ, C.Hom (filtration n) (filtration (n+1))
  quotients : ∀ n : ℕ, C.Obj
  exactSequences : ∀ n : ℕ, ExactSequence C

structure DevissageEvidence {C : AdditiveCategory} (D : Devissage C) where
  filtrationClosed : ∀ n, D.filtration n is a subobject
  exactSequencesClosed : ∀ n, ExactSequenceClosed (D.exactSequences n)

def DevissageClosed {C : AdditiveCategory} (D : Devissage C) : Prop :=
  ∀ n, ExactSequenceClosed (D.exactSequences n)

theorem devissage_closed_from_evidence {C : AdditiveCategory} (D : Devissage C) (E : DevissageEvidence D) : DevissageClosed D := by
  intro n
  exact E.exactSequencesClosed n

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse