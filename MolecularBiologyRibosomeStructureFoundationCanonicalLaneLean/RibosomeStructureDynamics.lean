import HautevilleHouse.MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure RibosomeDynamicsPackage where
  conformationalChanges : Type
  ratchetMotion : Prop
  l1StalkMotion : Prop
  accommodationBending : Prop
  intersubunitRotation : Prop

structure RibosomeDynamicsEvidence (R : RibosomeDynamicsPackage) where
  ratchetMotionClosed : R.ratchetMotion
  l1StalkMotionClosed : R.l1StalkMotion
  accommodationBendingClosed : R.accommodationBending
  intersubunitRotationClosed : R.intersubunitRotation

def RibosomeDynamicsClosed (R : RibosomeDynamicsPackage) : Prop :=
  R.ratchetMotion ∧ R.l1StalkMotion ∧ R.accommodationBending ∧ R.intersubunitRotation

theorem ribosome_dynamics_closed_from_evidence (R : RibosomeDynamicsPackage) (E : RibosomeDynamicsEvidence R) : RibosomeDynamicsClosed R := by
  exact And.intro E.ratchetMotionClosed
    (And.intro E.l1StalkMotionClosed
      (And.intro E.accommodationBendingClosed E.intersubunitRotationClosed))

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse