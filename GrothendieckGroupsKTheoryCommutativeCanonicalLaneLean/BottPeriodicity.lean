import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure BottPeriodicityPackage where
  K0AndK2Isomorphism : Prop
  K1AndK3Isomorphism : Prop
  periodEight : Prop
  K0AndK2IsomorphismClosed : K0AndK2Isomorphism
  K1AndK3IsomorphismClosed : K1AndK3Isomorphism
  periodEightClosed : periodEight

structure BottPeriodicityEvidence (B : BottPeriodicityPackage) where
  K0AndK2IsomorphismClosed : B.K0AndK2Isomorphism
  K1AndK3IsomorphismClosed : B.K1AndK3Isomorphism
  periodEightClosed : B.periodEight

def BottPeriodicityClosed (B : BottPeriodicityPackage) : Prop :=
  B.K0AndK2Isomorphism ∧ B.K1AndK3Isomorphism ∧ B.periodEight

theorem bott_periodicity_closed_from_evidence
    (B : BottPeriodicityPackage) (E : BottPeriodicityEvidence B) :
    BottPeriodicityClosed B := by
  exact And.intro E.K0AndK2IsomorphismClosed
    (And.intro E.K1AndK3IsomorphismClosed E.periodEightClosed)

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse