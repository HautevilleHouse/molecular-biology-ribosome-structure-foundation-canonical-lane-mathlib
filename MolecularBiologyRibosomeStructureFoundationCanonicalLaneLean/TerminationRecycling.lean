import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.ElongationCycle

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure TerminationRecyclingPackage {R : RibosomeComplex}
    {I : TranslationInitiationPackage R}
    {E : ElongationCyclePackage I} where
  stopCodonRecognition : Prop
  releaseFactorBinding : Prop
  polypeptideRelease : Prop
  subunitDissociation : Prop

structure TerminationRecyclingEvidence {R : RibosomeComplex}
    {I : TranslationInitiationPackage R}
    {E : ElongationCyclePackage I}
    (T : TerminationRecyclingPackage E) where
  stopCodonRecognitionClosed : T.stopCodonRecognition
  releaseFactorBindingClosed : T.releaseFactorBinding
  polypeptideReleaseClosed : T.polypeptideRelease
  subunitDissociationClosed : T.subunitDissociation

def TerminationRecyclingClosed {R : RibosomeComplex}
    {I : TranslationInitiationPackage R}
    {E : ElongationCyclePackage I}
    (T : TerminationRecyclingPackage E) : Prop :=
  T.stopCodonRecognition ∧ T.releaseFactorBinding ∧ T.polypeptideRelease ∧ T.subunitDissociation

theorem termination_recycling_closed_from_evidence
    {R : RibosomeComplex} {I : TranslationInitiationPackage R}
    {E : ElongationCyclePackage I}
    (T : TerminationRecyclingPackage E) (Ev : TerminationRecyclingEvidence T) :
    TerminationRecyclingClosed T := by
  exact And.intro Ev.stopCodonRecognitionClosed
    (And.intro Ev.releaseFactorBindingClosed
      (And.intro Ev.polypeptideReleaseClosed Ev.subunitDissociationClosed))

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse