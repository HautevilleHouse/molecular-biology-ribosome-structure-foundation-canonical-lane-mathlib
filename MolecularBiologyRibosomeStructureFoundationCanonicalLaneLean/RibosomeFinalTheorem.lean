import RibosomeGateLemmas

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

def ConstrainedRibosomeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ribosome_endgame (A : AdmissibleClass) :
    ConstrainedRibosomeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse