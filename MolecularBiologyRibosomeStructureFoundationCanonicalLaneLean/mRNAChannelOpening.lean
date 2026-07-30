import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean

structure mRNAChannelOpeningPackage where
  mRNAChannel : Type u
  decodingSite : Type v
  antiShineDalgarnoInteraction : Prop
  startCodonRecognition : Prop
  channelGateOpen : Prop

structure mRNAChannelOpeningEvidence (M : mRNAChannelOpeningPackage) where
  antiShineDalgarnoInteractionClosed : M.antiShineDalgarnoInteraction
  startCodonRecognitionClosed : M.startCodonRecognition
  channelGateOpenClosed : M.channelGateOpen

def mRNAChannelOpeningClosed (M : mRNAChannelOpeningPackage) : Prop :=
  M.antiShineDalgarnoInteraction ∧ M.startCodonRecognition ∧ M.channelGateOpen

theorem mrna_channel_opening_closed_from_evidence (M : mRNAChannelOpeningPackage) (E : mRNAChannelOpeningEvidence M) :
    mRNAChannelOpeningClosed M := by
  exact And.intro E.antiShineDalgarnoInteractionClosed (And.intro E.startCodonRecognitionClosed E.channelGateOpenClosed)

end MolecularBiologyRibosomeStructureFoundationCanonicalLaneLean
end HautevilleHouse