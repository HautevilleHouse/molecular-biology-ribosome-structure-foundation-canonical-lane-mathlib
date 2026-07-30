import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure RibosomeAdmittedObject where
  structureDataAvailable : Prop
  subunitStructureResolved : Prop
  mRNABindingSiteIdentified : Prop
  peptidylTransferaseCenterMapped : Prop
  functionalStateCaptured : Prop
  resolutionHighEnough : Prop

structure AdmissibleClass where
  object : RibosomeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RibosomeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse