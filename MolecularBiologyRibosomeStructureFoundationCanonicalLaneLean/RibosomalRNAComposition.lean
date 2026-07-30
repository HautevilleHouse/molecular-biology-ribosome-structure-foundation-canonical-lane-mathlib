import MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.RibosomeStructureFoundation

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure RRNACompositionPackage where
  rrnaSequencesAligned : Prop
  secondaryStructureConserved : Prop
  tertiaryInteractionsMapped : Prop
  catalyticCenterIdentified : Prop

structure RRNACompositionEvidence (P : RRNACompositionPackage) where
  rrnaSequencesAlignedClosed : P.rrnaSequencesAligned
  secondaryStructureConservedClosed : P.secondaryStructureConserved
  tertiaryInteractionsMappedClosed : P.tertiaryInteractionsMapped
  catalyticCenterIdentifiedClosed : P.catalyticCenterIdentified

def RRNACompositionClosed (P : RRNACompositionPackage) : Prop :=
  P.rrnaSequencesAligned ∧ P.secondaryStructureConserved ∧ P.tertiaryInteractionsMapped ∧ P.catalyticCenterIdentified

theorem rrna_composition_closed_from_evidence (P : RRNACompositionPackage) (E : RRNACompositionEvidence P) :
    RRNACompositionClosed P := by
  exact And.intro E.rrnaSequencesAlignedClosed
    (And.intro E.secondaryStructureConservedClosed
      (And.intro E.tertiaryInteractionsMappedClosed E.catalyticCenterIdentifiedClosed))

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse
