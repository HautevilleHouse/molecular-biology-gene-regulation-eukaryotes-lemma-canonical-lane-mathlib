import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean

structure PostTranscriptionalRegulationPackage where
  mrnaSplicing : Prop
  mrnaExport : Prop
  translationalControl : Prop
  mrnaStability : Prop
  noncodingRnaMediatedRegulation : Prop

def PostTranscriptionalRegulationClosed (P : PostTranscriptionalRegulationPackage) : Prop :=
  P.mrnaSplicing ∧ P.mrnaExport ∧ P.translationalControl ∧ P.mrnaStability ∧
  P.noncodingRnaMediatedRegulation

structure PostTranscriptionalRegulationEvidence (P : PostTranscriptionalRegulationPackage) where
  mrnaSplicingClosed : P.mrnaSplicing
  mrnaExportClosed : P.mrnaExport
  translationalControlClosed : P.translationalControl
  mrnaStabilityClosed : P.mrnaStability
  noncodingRnaMediatedRegulationClosed : P.noncodingRnaMediatedRegulation

theorem post_transcriptional_regulation_closed_from_evidence (P : PostTranscriptionalRegulationPackage)
    (E : PostTranscriptionalRegulationEvidence P) : PostTranscriptionalRegulationClosed P := by
  exact And.intro E.mrnaSplicingClosed
    (And.intro E.mrnaExportClosed
      (And.intro E.translationalControlClosed
        (And.intro E.mrnaStabilityClosed E.noncodingRnaMediatedRegulationClosed)))

end MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean
end HautevilleHouse
