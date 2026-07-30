import HautevilleHouse.MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure MRNAtRNAInteractionPackage where
  mrnaChannel : Type
  trnaBindingSites : Type
  codonAnticodonPairing : Prop
  translocationFidelity : Prop
  decodingCenter : Prop

structure MRNAtRNAInteractionEvidence (M : MRNAtRNAInteractionPackage) where
  codonAnticodonPairingClosed : M.codonAnticodonPairing
  translocationFidelityClosed : M.translocationFidelity
  decodingCenterClosed : M.decodingCenter

def MRNAtRNAInteractionClosed (M : MRNAtRNAInteractionPackage) : Prop :=
  M.codonAnticodonPairing ∧ M.translocationFidelity ∧ M.decodingCenter

theorem mrna_trna_interaction_closed_from_evidence (M : MRNAtRNAInteractionPackage) (E : MRNAtRNAInteractionEvidence M) : MRNAtRNAInteractionClosed M := by
  exact And.intro E.codonAnticodonPairingClosed
    (And.intro E.translocationFidelityClosed E.decodingCenterClosed)

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse