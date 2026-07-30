import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.TranslationInitiation

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure ElongationCyclePackage {R : RibosomeComplex}
    {I : TranslationInitiationPackage R} where
  aminoacylTrnaDelivery : Prop
  peptidylTransfer : Prop
  translocation : Prop
  elongationFactors : Type u

structure ElongationCycleEvidence {R : RibosomeComplex}
    {I : TranslationInitiationPackage R}
    (E : ElongationCyclePackage I) where
  aminoacylTrnaDeliveryClosed : E.aminoacylTrnaDelivery
  peptidylTransferClosed : E.peptidylTransfer
  translocationClosed : E.translocation

def ElongationCycleClosed {R : RibosomeComplex}
    {I : TranslationInitiationPackage R}
    (E : ElongationCyclePackage I) : Prop :=
  E.aminoacylTrnaDelivery ∧ E.peptidylTransfer ∧ E.translocation

theorem elongation_cycle_closed_from_evidence
    {R : RibosomeComplex} {I : TranslationInitiationPackage R}
    (E : ElongationCyclePackage I) (Ev : ElongationCycleEvidence E) :
    ElongationCycleClosed E := by
  exact And.intro Ev.aminoacylTrnaDeliveryClosed
    (And.intro Ev.peptidylTransferClosed Ev.translocationClosed)

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse