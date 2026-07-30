import MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.RibosomeStructureFoundation

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure RibosomalProteinPackage where
  proteinSetIdentified : Prop
  proteinRRNAContactMap : Prop
  proteinProteinInterfaces : Prop
  assemblyChaperonesKnown : Prop

structure RibosomalProteinEvidence (P : RibosomalProteinPackage) where
  proteinSetIdentifiedClosed : P.proteinSetIdentified
  proteinRRNAContactMapClosed : P.proteinRRNAContactMap
  proteinProteinInterfacesClosed : P.proteinProteinInterfaces
  assemblyChaperonesKnownClosed : P.assemblyChaperonesKnown

def RibosomalProteinClosed (P : RibosomalProteinPackage) : Prop :=
  P.proteinSetIdentified ∧ P.proteinRRNAContactMap ∧ P.proteinProteinInterfaces ∧ P.assemblyChaperonesKnown

theorem ribosomal_protein_closed_from_evidence (P : RibosomalProteinPackage) (E : RibosomalProteinEvidence P) :
    RibosomalProteinClosed P := by
  exact And.intro E.proteinSetIdentifiedClosed
    (And.intro E.proteinRRNAContactMapClosed
      (And.intro E.proteinProteinInterfacesClosed E.assemblyChaperonesKnownClosed))

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse
