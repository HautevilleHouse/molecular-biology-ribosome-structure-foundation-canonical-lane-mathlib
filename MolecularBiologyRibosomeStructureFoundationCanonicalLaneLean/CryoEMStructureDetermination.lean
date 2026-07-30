import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.RibosomeStructureFoundation

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure CryoEMStructurePackage where
  ribosomalSubunitSample : Prop
  electronMicroscopeDataCollected : Prop
  threeDReconstructionComputed : Prop
  atomicModelBuilt : Prop
  localResolutionEstimated : Prop

structure CryoEMEvidence (C : CryoEMStructurePackage) where
  ribosomalSubunitSampleClosed : C.ribosomalSubunitSample
  electronMicroscopeDataCollectedClosed : C.electronMicroscopeDataCollected
  threeDReconstructionComputedClosed : C.threeDReconstructionComputed
  atomicModelBuiltClosed : C.atomicModelBuilt
  localResolutionEstimatedClosed : C.localResolutionEstimated

def CryoEMStructureClosed (C : CryoEMStructurePackage) : Prop :=
  C.ribosomalSubunitSample ∧ C.electronMicroscopeDataCollected ∧
  C.threeDReconstructionComputed ∧ C.atomicModelBuilt ∧ C.localResolutionEstimated

theorem cryo_em_structure_closed_from_evidence
    (C : CryoEMStructurePackage) (E : CryoEMEvidence C) :
    CryoEMStructureClosed C := by
  exact And.intro E.ribosomalSubunitSampleClosed
    (And.intro E.electronMicroscopeDataCollectedClosed
      (And.intro E.threeDReconstructionComputedClosed
        (And.intro E.atomicModelBuiltClosed E.localResolutionEstimatedClosed)))

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse