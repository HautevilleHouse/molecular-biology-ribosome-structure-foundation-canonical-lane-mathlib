import MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RibosomeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse
