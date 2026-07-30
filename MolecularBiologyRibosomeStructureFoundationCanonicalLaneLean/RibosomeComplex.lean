import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure RibosomeComplex where
  smallSubunit : Type u
  largeSubunit : Type v
  mrnaBinding : Prop
  trnaBinding : Prop
  peptidylTransferaseCenter : Prop

structure RibosomeComplexEvidence (R : RibosomeComplex) where
  smallSubunitClosed : R.smallSubunit
  largeSubunitClosed : R.largeSubunit
  mrnaBindingClosed : R.mrnaBinding
  trnaBindingClosed : R.trnaBinding
  peptidylTransferaseCenterClosed : R.peptidylTransferaseCenter

def RibosomeComplexClosed (R : RibosomeComplex) : Prop :=
  R.smallSubunit ∧ R.largeSubunit ∧ R.mrnaBinding ∧ R.trnaBinding ∧ R.peptidylTransferaseCenter

theorem ribosome_complex_closed_from_evidence (R : RibosomeComplex) (E : RibosomeComplexEvidence R) :
    RibosomeComplexClosed R := by
  exact And.intro E.smallSubunitClosed
    (And.intro E.largeSubunitClosed
      (And.intro E.mrnaBindingClosed
        (And.intro E.trnaBindingClosed E.peptidylTransferaseCenterClosed)))

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse