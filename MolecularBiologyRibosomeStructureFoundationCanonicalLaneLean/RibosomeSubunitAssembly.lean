import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure RibosomeSubunitAssembly where
  smallSubunit : Type u
  largeSubunit : Type v
  assemblyFactors : Type w
  smallSubunitRRNA : Prop
  largeSubunitRRNA : Prop
  factorBindingOrder : Prop
  gtpHydrolysisRequired : Prop

structure RibosomeSubunitAssemblyEvidence (R : RibosomeSubunitAssembly) where
  smallSubunitRRNAClosed : R.smallSubunitRRNA
  largeSubunitRRNAClosed : R.largeSubunitRRNA
  factorBindingOrderClosed : R.factorBindingOrder
  gtpHydrolysisRequiredClosed : R.gtpHydrolysisRequired

def RibosomeSubunitAssemblyClosed (R : RibosomeSubunitAssembly) : Prop :=
  R.smallSubunitRRNA ∧ R.largeSubunitRRNA ∧ R.factorBindingOrder ∧ R.gtpHydrolysisRequired

theorem ribosome_subunit_assembly_closed_from_evidence (R : RibosomeSubunitAssembly) (E : RibosomeSubunitAssemblyEvidence R) :
    RibosomeSubunitAssemblyClosed R := by
  exact And.intro E.smallSubunitRRNAClosed (And.intro E.largeSubunitRRNAClosed (And.intro E.factorBindingOrderClosed E.gtpHydrolysisRequiredClosed))

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse