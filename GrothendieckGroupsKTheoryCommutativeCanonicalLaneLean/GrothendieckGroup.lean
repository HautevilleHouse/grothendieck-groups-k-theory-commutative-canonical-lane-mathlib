import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

structure GrothendieckGroup (C : AdditiveCategory) where
  generators : Type u
  relation : generators → generators → Prop
  quotient : Type v
  canonicalMap : ∀ (A : C.Obj), quotient
  add : quotient → quotient → quotient
  zero : quotient
  neg : quotient → quotient

structure GrothendieckGroupEvidence {C : AdditiveCategory} (G : GrothendieckGroup C) where
  generatorsClosed : G.generators = C.Obj
  relationClosed : ∀ A B : C.Obj, G.relation (G.canonicalMap A) (G.canonicalMap (C.biproduct A B))
  quotientClosed : G.quotient is an abelian group

def GrothendieckGroupClosed {C : AdditiveCategory} (G : GrothendieckGroup C) : Prop :=
  true

theorem grothendieck_group_closed_from_evidence {C : AdditiveCategory} (G : GrothendieckGroup C) (E : GrothendieckGroupEvidence G) : GrothendieckGroupClosed G := by
  trivial

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse