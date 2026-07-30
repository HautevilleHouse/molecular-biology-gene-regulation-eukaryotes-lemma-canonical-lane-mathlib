import HautevilleHouse.MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean.GeneRegulationAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean

structure TranscriptionInitiationPackage where
  promoterRegion : Prop
  transcriptionFactorAssembly : Prop
  chromatinRemodeling : Prop
  preInitiationComplexFormation : Prop
  rnaPolymerasePausing : Prop
  productiveElongation : Prop

structure TranscriptionInitiationEvidence (T : TranscriptionInitiationPackage) where
  promoterRegionClosed : T.promoterRegion
  transcriptionFactorAssemblyClosed : T.transcriptionFactorAssembly
  chromatinRemodelingClosed : T.chromatinRemodeling
  preInitiationComplexFormationClosed : T.preInitiationComplexFormation
  rnaPolymerasePausingClosed : T.rnaPolymerasePausing
  productiveElongationClosed : T.productiveElongation

def TranscriptionInitiationClosed (T : TranscriptionInitiationPackage) : Prop :=
  T.promoterRegion ∧ T.transcriptionFactorAssembly ∧ T.chromatinRemodeling ∧
  T.preInitiationComplexFormation ∧ T.rnaPolymerasePausing ∧ T.productiveElongation

theorem transcription_initiation_closed_from_evidence (T : TranscriptionInitiationPackage)
    (E : TranscriptionInitiationEvidence T) : TranscriptionInitiationClosed T := by
  exact And.intro E.promoterRegionClosed
    (And.intro E.transcriptionFactorAssemblyClosed
      (And.intro E.chromatinRemodelingClosed
        (And.intro E.preInitiationComplexFormationClosed
          (And.intro E.rnaPolymerasePausingClosed E.productiveElongationClosed))))

end MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean
end HautevilleHouse