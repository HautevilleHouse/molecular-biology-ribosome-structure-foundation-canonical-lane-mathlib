import HautevilleHouse.MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RibosomeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RibosomeAdmittedObject where
  space : RibosomeSpace
  functionalRibosome : Prop
  translationCompetent : Prop
  structureModel : Type
  structureTopology : TopologicalSpace structureModel
  structureResolved : Prop
  conclusion : structureResolved

structure RibosomeEndgameState where
  object : RibosomeAdmittedObject

def RibosomeWitnessClosed (O : RibosomeAdmittedObject) : Prop :=
  O.structureResolved

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse