import MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure RibosomeAdmittedObject where
  organism : String
  hasCryoEMStructure : Prop
  rrnaCompositionConfirmed : Prop
  ribosomalProteinsCatalogued : Prop
  translationAssayFunctional : Prop
  conclusion : hasCryoEMStructure ∧ rrnaCompositionConfirmed ∧ ribosomalProteinsCatalogued ∧ translationAssayFunctional

def RibosomeWitnessClosed (O : RibosomeAdmittedObject) : Prop :=
  O.hasCryoEMStructure ∧ O.rrnaCompositionConfirmed ∧ O.ribosomalProteinsCatalogued ∧ O.translationAssayFunctional

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse
