import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GrothendieckWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse