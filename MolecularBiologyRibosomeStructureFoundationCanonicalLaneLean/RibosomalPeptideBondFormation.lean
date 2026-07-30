import HautevilleHouse.MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure PeptideBondFormationPackage where
  peptidylTransferaseCenter : Type
  aSiteTRnaBound : Prop
  pSiteTRnaBound : Prop
  nucleophilicAttack : Prop
  protonShuttle : Prop
  peptideBondFormed : Prop

structure PeptideBondFormationEvidence (P : PeptideBondFormationPackage) where
  aSiteTRnaBoundClosed : P.aSiteTRnaBound
  pSiteTRnaBoundClosed : P.pSiteTRnaBound
  nucleophilicAttackClosed : P.nucleophilicAttack
  protonShuttleClosed : P.protonShuttle
  peptideBondFormedClosed : P.peptideBondFormed

def PeptideBondFormationClosed (P : PeptideBondFormationPackage) : Prop :=
  P.aSiteTRnaBound ∧ P.pSiteTRnaBound ∧ P.nucleophilicAttack ∧ P.protonShuttle ∧ P.peptideBondFormed

theorem peptide_bond_formation_closed_from_evidence (P : PeptideBondFormationPackage) (E : PeptideBondFormationEvidence P) : PeptideBondFormationClosed P := by
  exact And.intro E.aSiteTRnaBoundClosed
    (And.intro E.pSiteTRnaBoundClosed
      (And.intro E.nucleophilicAttackClosed
        (And.intro E.protonShuttleClosed E.peptideBondFormedClosed)))

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse