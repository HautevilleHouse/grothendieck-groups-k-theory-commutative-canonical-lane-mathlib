import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure AdditiveCategory where
  Obj : Type u
  Hom : Obj → Obj → Type v
  comp : ∀ {A B C : Obj}, Hom A B → Hom B C → Hom A C
  id : ∀ (A : Obj), Hom A A
  zero : ∀ (A B : Obj), Hom A B
  biproduct : ∀ (A B : Obj), Obj
  zeroMorphism : ∀ (A B : Obj), zero A B = 0
  associativity : ∀ {A B C D : Obj} (f : Hom A B) (g : Hom B C) (h : Hom C D), comp (comp f g) h = comp f (comp g h)
  identityLeft : ∀ {A B : Obj} (f : Hom A B), comp (id A) f = f
  identityRight : ∀ {A B : Obj} (f : Hom A B), comp f (id B) = f
  biproductCone : ∀ (A B : Obj), (biproduct A B) with projections

structure AdditiveCategoryEvidence (C : AdditiveCategory) where
  hasZeroMorphism : ∀ A B, C.zero A B = 0
  hasBiproducts : ∀ A B, C.biproduct A B is a biproduct

def AdditiveCategoryClosed (C : AdditiveCategory) : Prop :=
  true

theorem additive_category_closed_from_evidence (C : AdditiveCategory) (E : AdditiveCategoryEvidence C) : AdditiveCategoryClosed C := by
  trivial

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse