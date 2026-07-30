import MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.RibosomeStructureFoundation

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure CryoEMStructurePackage where
  resolutionAngstroms : ℝ
  mapCorrected : Prop
  atomicModelBuilt : Prop
  localResolutionVariation : Prop

structure CryoEMStructureEvidence (P : CryoEMStructurePackage) where
  resolutionAngstromsClosed : P.resolutionAngstroms ≤ 3.5
  mapCorrectedClosed : P.mapCorrected
  atomicModelBuiltClosed : P.atomicModelBuilt
  localResolutionVariationClosed : P.localResolutionVariation

def CryoEMStructureClosed (P : CryoEMStructurePackage) : Prop :=
  P.resolutionAngstroms ≤ 3.5 ∧ P.mapCorrected ∧ P.atomicModelBuilt ∧ P.localResolutionVariation

theorem cryo_em_structure_closed_from_evidence (P : CryoEMStructurePackage) (E : CryoEMStructureEvidence P) :
    CryoEMStructureClosed P := by
  exact And.intro E.resolutionAngstromsClosed
    (And.intro E.mapCorrectedClosed
      (And.intro E.atomicModelBuiltClosed E.localResolutionVariationClosed))

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse
