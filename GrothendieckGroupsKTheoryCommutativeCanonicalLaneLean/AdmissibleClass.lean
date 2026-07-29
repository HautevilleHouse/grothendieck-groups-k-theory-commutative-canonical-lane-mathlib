import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure AdmissibleClass where
  object : GrothendieckAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GrothendieckWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse