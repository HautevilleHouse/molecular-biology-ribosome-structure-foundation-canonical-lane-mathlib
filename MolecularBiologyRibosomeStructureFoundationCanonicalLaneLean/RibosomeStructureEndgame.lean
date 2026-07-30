import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.TerminationRecycling

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedRibosomeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ribosome_endgame (A : AdmissibleClass) :
    ConstrainedRibosomeClosure A := by
  refine And.intro (by
    exact A.endpointSatisfied)
    (by
      exact Or.inl A.endpointSatisfied)

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse