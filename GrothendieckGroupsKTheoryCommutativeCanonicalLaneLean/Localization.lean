import GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean.ExactCategory

/-!
# Localization Package
-/

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure LocalizationPackage {E : ExactCategory} (S : CollectionOfMorphisms E) where
  multiplicativeSystem : Prop
  calculusOfFractions : Prop
  localizationCategory : Type u
  localizingFunctor : Type v
  grothendieckGroupCompatibility : Prop

structure LocalizationEvidence {E : ExactCategory} {S : CollectionOfMorphisms E}
    (L : LocalizationPackage S) where
  multiplicativeSystemClosed : L.multiplicativeSystem
  calculusOfFractionsClosed : L.calculusOfFractions
  grothendieckGroupCompatibilityClosed : L.grothendieckGroupCompatibility

def LocalizationClosed {E : ExactCategory} {S : CollectionOfMorphisms E}
    (L : LocalizationPackage S) : Prop :=
  L.multiplicativeSystem ∧ L.calculusOfFractions ∧
  L.grothendieckGroupCompatibility

theorem localization_closed_from_evidence
    {E : ExactCategory} {S : CollectionOfMorphisms E}
    (L : LocalizationPackage S) (Ev : LocalizationEvidence L) :
    LocalizationClosed L := by
  exact And.intro Ev.multiplicativeSystemClosed
    (And.intro Ev.calculusOfFractionsClosed
      Ev.grothendieckGroupCompatibilityClosed)

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse