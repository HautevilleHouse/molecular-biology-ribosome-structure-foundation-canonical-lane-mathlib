import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure PeptidylTransferPackage where
  peptidylTransferaseCenter : Type u
  A_site_tRNA : Type v
  P_site_tRNA : Type w
  peptideBondFormation : Prop
  ribosomalRNACatalysis : Prop
  coordinationOfMgIons : Prop

structure PeptidylTransferEvidence (P : PeptidylTransferPackage) where
  peptideBondFormationClosed : P.peptideBondFormation
  ribosomalRNACatalysisClosed : P.ribosomalRNACatalysis
  coordinationOfMgIonsClosed : P.coordinationOfMgIons

def PeptidylTransferClosed (P : PeptidylTransferPackage) : Prop :=
  P.peptideBondFormation ∧ P.ribosomalRNACatalysis ∧ P.coordinationOfMgIons

theorem peptidyl_transfer_closed_from_evidence (P : PeptidylTransferPackage) (E : PeptidylTransferEvidence P) :
    PeptidylTransferClosed P := by
  exact And.intro E.peptideBondFormationClosed (And.intro E.ribosomalRNACatalysisClosed E.coordinationOfMgIonsClosed)

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse