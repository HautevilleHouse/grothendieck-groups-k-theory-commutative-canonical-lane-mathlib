import GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Algebra.Category.ModuleCat.Basic

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GrothendieckSpace where
  carrier : Type
  ringStructure : Ring carrier

structure GrothendieckAdmittedObject where
  space : GrothendieckSpace
  finitelyGeneratedProjectiveModules : Prop
  grothendieckGroupDefined : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : grothendieckGroupDefined

structure GrothendieckEndgameState where
  object : GrothendieckAdmittedObject

def GrothendieckWitnessClosed (O : GrothendieckAdmittedObject) : Prop :=
  O.grothendieckGroupDefined

end GrothendieckGroupsKTheoryCommutativeCanonicalLaneLean
end HautevilleHouse