import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure AdamsOperationPackage where
  lambdaOperations : Type u
  adamsOperationsDefined : Prop
  adamsRelations : Prop
  ringStructure : Prop

structure AdamsOperationEvidence (A : AdamsOperationPackage) where
  adamsOperationsDefinedClosed : A.adamsOperationsDefined
  adamsRelationsClosed : A.adamsRelations
  ringStructureClosed : A.ringStructure

def AdamsOperationClosed (A : AdamsOperationPackage) : Prop :=
  A.adamsOperationsDefined ∧ A.adamsRelations ∧ A.ringStructure

theorem adams_operation_closed_from_evidence (A : AdamsOperationPackage) (E : AdamsOperationEvidence A) : AdamsOperationClosed A := by
  exact And.intro E.adamsOperationsDefinedClosed (And.intro E.adamsRelationsClosed E.ringStructureClosed)

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse