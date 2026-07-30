import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.RibosomeStructureFoundation

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure PeptidylTransferEvidencePackage where
  ribosomalRNAActiveSite : Prop
  substrateAnalogBinding : Prop
  transitionStateStabilization : Prop
  peptideBondFormationAssay : Prop

structure PeptidylTransferEvidence (P : PeptidylTransferEvidencePackage) where
  ribosomalRNAActiveSiteClosed : P.ribosomalRNAActiveSite
  substrateAnalogBindingClosed : P.substrateAnalogBinding
  transitionStateStabilizationClosed : P.transitionStateStabilization
  peptideBondFormationAssayClosed : P.peptideBondFormationAssay

def PeptidylTransferClosed (P : PeptidylTransferEvidencePackage) : Prop :=
  P.ribosomalRNAActiveSite ∧ P.substrateAnalogBinding ∧
  P.transitionStateStabilization ∧ P.peptideBondFormationAssay

theorem peptidyl_transfer_closed_from_evidence
    (P : PeptidylTransferEvidencePackage) (E : PeptidylTransferEvidence P) :
    PeptidylTransferClosed P := by
  exact And.intro E.ribosomalRNAActiveSiteClosed
    (And.intro E.substrateAnalogBindingClosed
      (And.intro E.transitionStateStabilizationClosed
        E.peptideBondFormationAssayClosed))

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse