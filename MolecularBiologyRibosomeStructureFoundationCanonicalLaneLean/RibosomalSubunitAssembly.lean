import HautevilleHouse.MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure RibosomalSubunitAssemblyPackage where
  largeSubunit : Type
  smallSubunit : Type
  rrnaFolding : Prop
  ribosomalProteinsBinding : Prop
  subunitJoiningFactor : Prop
  intersubunitBridges : Prop

structure RibosomalSubunitAssemblyEvidence (R : RibosomalSubunitAssemblyPackage) where
  rrnaFoldingClosed : R.rrnaFolding
  ribosomalProteinsBindingClosed : R.ribosomalProteinsBinding
  subunitJoiningFactorClosed : R.subunitJoiningFactor
  intersubunitBridgesClosed : R.intersubunitBridges

def RibosomalSubunitAssemblyClosed (R : RibosomalSubunitAssemblyPackage) : Prop :=
  R.rrnaFolding ∧ R.ribosomalProteinsBinding ∧ R.subunitJoiningFactor ∧ R.intersubunitBridges

theorem ribosomal_subunit_assembly_closed_from_evidence (R : RibosomalSubunitAssemblyPackage) (E : RibosomalSubunitAssemblyEvidence R) : RibosomalSubunitAssemblyClosed R := by
  exact And.intro E.rrnaFoldingClosed
    (And.intro E.ribosomalProteinsBindingClosed
      (And.intro E.subunitJoiningFactorClosed E.intersubunitBridgesClosed))

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse