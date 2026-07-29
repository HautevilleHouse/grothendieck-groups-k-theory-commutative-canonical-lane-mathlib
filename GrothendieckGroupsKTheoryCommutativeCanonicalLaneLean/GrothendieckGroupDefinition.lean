import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure GrothendieckGroupPackage where
  category : Type u
  objects : Type v
  exactSequences : Prop
  shortExactSequencesClosed : Prop

structure GrothendieckGroupEvidence (G : GrothendieckGroupPackage) where
  exactSequencesClosed : G.exactSequences
  shortExactSequencesClosed : G.shortExactSequencesClosed

def GrothendieckGroupClosed (G : GrothendieckGroupPackage) : Prop :=
  G.exactSequences ∧ G.shortExactSequencesClosed

theorem grothendieck_group_closed_from_evidence (G : GrothendieckGroupPackage) (E : GrothendieckGroupEvidence G) : GrothendieckGroupClosed G := by
  exact And.intro E.exactSequencesClosed E.shortExactSequencesClosed

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse