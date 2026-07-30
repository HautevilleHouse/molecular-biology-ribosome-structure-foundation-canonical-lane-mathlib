import HautevilleHouse.MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure RibosomeAntibioticTargetPackage where
  antibioticBindingSite : Type
  peptideExitTunnel : Prop
  decodingCenterBlocked : Prop
  peptidylTransferaseInhibited : Prop
  resistanceMechanism : Prop

structure RibosomeAntibioticTargetEvidence (R : RibosomeAntibioticTargetPackage) where
  peptideExitTunnelClosed : R.peptideExitTunnel
  decodingCenterBlockedClosed : R.decodingCenterBlocked
  peptidylTransferaseInhibitedClosed : R.peptidylTransferaseInhibited
  resistanceMechanismClosed : R.resistanceMechanism

def RibosomeAntibioticTargetClosed (R : RibosomeAntibioticTargetPackage) : Prop :=
  R.peptideExitTunnel ∧ R.decodingCenterBlocked ∧ R.peptidylTransferaseInhibited ∧ R.resistanceMechanism

theorem ribosome_antibiotic_target_closed_from_evidence (R : RibosomeAntibioticTargetPackage) (E : RibosomeAntibioticTargetEvidence R) : RibosomeAntibioticTargetClosed R := by
  exact And.intro E.peptideExitTunnelClosed
    (And.intro E.decodingCenterBlockedClosed
      (And.intro E.peptidylTransferaseInhibitedClosed E.resistanceMechanismClosed))

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse