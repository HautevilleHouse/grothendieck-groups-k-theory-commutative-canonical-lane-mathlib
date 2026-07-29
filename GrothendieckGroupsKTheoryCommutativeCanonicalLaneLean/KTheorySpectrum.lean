import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure KTheorySpectrumPackage where
  ring : Type u
  projectiveModules : Type v
  K0Group : Type w
  K1Group : Type x
  connectingHomomorphisms : Prop
  exactnessAtK0 : Prop
  exactnessAtK1 : Prop
  K0GroupClosed : K0Group
  K1GroupClosed : K1Group
  connectingHomomorphismsClosed : connectingHomomorphisms
  exactnessAtK0Closed : exactnessAtK0
  exactnessAtK1Closed : exactnessAtK1

structure KTheorySpectrumEvidence (S : KTheorySpectrumPackage) where
  K0GroupClosed : S.K0Group
  K1GroupClosed : S.K1Group
  connectingHomomorphismsClosed : S.connectingHomomorphisms
  exactnessAtK0Closed : S.exactnessAtK0
  exactnessAtK1Closed : S.exactnessAtK1

def KTheorySpectrumClosed (S : KTheorySpectrumPackage) : Prop :=
  S.K0Group ∧ S.K1Group ∧ S.connectingHomomorphisms ∧ S.exactnessAtK0 ∧ S.exactnessAtK1

theorem k_theory_spectrum_closed_from_evidence
    (S : KTheorySpectrumPackage) (E : KTheorySpectrumEvidence S) :
    KTheorySpectrumClosed S := by
  exact And.intro E.K0GroupClosed
    (And.intro E.K1GroupClosed
      (And.intro E.connectingHomomorphismsClosed
        (And.intro E.exactnessAtK0Closed E.exactnessAtK1Closed)))

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse