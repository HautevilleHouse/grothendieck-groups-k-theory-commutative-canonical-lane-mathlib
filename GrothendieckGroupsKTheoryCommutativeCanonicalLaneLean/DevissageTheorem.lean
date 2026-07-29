import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure DevissageTheoremPackage where
  filtration : Type u
  gradedPieces : Type v
  devissageIso : Prop
  inductionStep : Prop

structure DevissageTheoremEvidence (D : DevissageTheoremPackage) where
  devissageIsoClosed : D.devissageIso
  inductionStepClosed : D.inductionStep

def DevissageTheoremClosed (D : DevissageTheoremPackage) : Prop :=
  D.devissageIso ∧ D.inductionStep

theorem devissage_theorem_closed_from_evidence (D : DevissageTheoremPackage) (E : DevissageTheoremEvidence D) : DevissageTheoremClosed D := by
  exact And.intro E.devissageIsoClosed E.inductionStepClosed

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse