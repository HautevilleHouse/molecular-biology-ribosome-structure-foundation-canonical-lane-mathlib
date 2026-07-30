import MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.RibosomeStructureFoundation

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure TranslationAssayPackage where
  invitroTranslationActive : Prop
  initiationFactorsReconstituted : Prop
  elongationCompetent : Prop
  terminationReconstituted : Prop

structure TranslationAssayEvidence (P : TranslationAssayPackage) where
  invitroTranslationActiveClosed : P.invitroTranslationActive
  initiationFactorsReconstitutedClosed : P.initiationFactorsReconstituted
  elongationCompetentClosed : P.elongationCompetent
  terminationReconstitutedClosed : P.terminationReconstituted

def TranslationAssayClosed (P : TranslationAssayPackage) : Prop :=
  P.invitroTranslationActive ∧ P.initiationFactorsReconstituted ∧ P.elongationCompetent ∧ P.terminationReconstituted

theorem translation_assay_closed_from_evidence (P : TranslationAssayPackage) (E : TranslationAssayEvidence P) :
    TranslationAssayClosed P := by
  exact And.intro E.invitroTranslationActiveClosed
    (And.intro E.initiationFactorsReconstitutedClosed
      (And.intro E.elongationCompetentClosed E.terminationReconstitutedClosed))

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse
