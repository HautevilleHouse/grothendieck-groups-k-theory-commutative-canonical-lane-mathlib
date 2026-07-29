import Mathlib.CategoryTheory.Abelian.Grothendieck
import Mathlib.AlgebraicKTheory.GrothendieckGroup

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

open CategoryTheory

structure GrothendieckSpace where
  carrier : Type u
  abelian : Abelian carrier

structure GrothendieckAdmittedObject where
  space : GrothendieckSpace
  isCommutativeRing : Prop
  finitelyGeneratedProjectives : Prop
  grothendieckGroupModel : Type u
  groupTopology : TopologicalSpace grothendieckGroupModel
  isomorphismWithK0 : Prop
  conclusion : isomorphismWithK0

def GrothendieckWitnessClosed (O : GrothendieckAdmittedObject) : Prop :=
  O.isomorphismWithK0

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse
