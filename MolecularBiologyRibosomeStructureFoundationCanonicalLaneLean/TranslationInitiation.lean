import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.RibosomeComplex

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure TranslationInitiationPackage {R : RibosomeComplex} where
  initiationFactors : Type u
  startCodonRecognition : Prop
  subunitJoining : Prop
  initiatorTrnaBinding : Prop

structure TranslationInitiationEvidence {R : RibosomeComplex}
    (I : TranslationInitiationPackage R) where
  startCodonRecognitionClosed : I.startCodonRecognition
  subunitJoiningClosed : I.subunitJoining
  initiatorTrnaBindingClosed : I.initiatorTrnaBinding

def TranslationInitiationClosed {R : RibosomeComplex}
    (I : TranslationInitiationPackage R) : Prop :=
  I.startCodonRecognition ∧ I.subunitJoining ∧ I.initiatorTrnaBinding

theorem translation_initiation_closed_from_evidence
    {R : RibosomeComplex} (I : TranslationInitiationPackage R)
    (E : TranslationInitiationEvidence I) : TranslationInitiationClosed I := by
  exact And.intro E.startCodonRecognitionClosed
    (And.intro E.subunitJoiningClosed E.initiatorTrnaBindingClosed)

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse