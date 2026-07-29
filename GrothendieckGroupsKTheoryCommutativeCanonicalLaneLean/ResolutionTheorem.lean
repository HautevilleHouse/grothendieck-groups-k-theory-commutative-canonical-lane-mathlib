import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure ResolutionTheoremPackage where
  projectiveResolutionExists : Prop
  resolutionFunctorial : Prop
  derivedFunctorDefined : Prop

structure ResolutionTheoremEvidence (R : ResolutionTheoremPackage) where
  projectiveResolutionExistsClosed : R.projectiveResolutionExists
  resolutionFunctorialClosed : R.resolutionFunctorial
  derivedFunctorDefinedClosed : R.derivedFunctorDefined

def ResolutionTheoremClosed (R : ResolutionTheoremPackage) : Prop :=
  R.projectiveResolutionExists ∧ R.resolutionFunctorial ∧ R.derivedFunctorDefined

theorem resolution_theorem_closed_from_evidence (R : ResolutionTheoremPackage) (E : ResolutionTheoremEvidence R) : ResolutionTheoremClosed R := by
  exact And.intro E.projectiveResolutionExistsClosed (And.intro E.resolutionFunctorialClosed E.derivedFunctorDefinedClosed)

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse