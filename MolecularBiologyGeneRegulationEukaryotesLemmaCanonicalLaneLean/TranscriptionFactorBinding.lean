import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean

structure TranscriptionFactorBindingPackage where
  transcriptionFactor : Type u
  bindingSite : Type v
  dnaSequence : Type w
  affinity : Prop
  specificity : Prop
  occupancyUnderCondition : Prop
  cooperativity : Prop

def TranscriptionFactorBindingClosed (T : TranscriptionFactorBindingPackage) : Prop :=
  T.affinity ∧ T.specificity ∧ T.occupancyUnderCondition ∧ T.cooperativity

structure TranscriptionFactorBindingEvidence (T : TranscriptionFactorBindingPackage) where
  affinityClosed : T.affinity
  specificityClosed : T.specificity
  occupancyUnderConditionClosed : T.occupancyUnderCondition
  cooperativityClosed : T.cooperativity

theorem tf_binding_closed_from_evidence (T : TranscriptionFactorBindingPackage)
    (E : TranscriptionFactorBindingEvidence T) : TranscriptionFactorBindingClosed T := by
  exact And.intro E.affinityClosed
    (And.intro E.specificityClosed
      (And.intro E.occupancyUnderConditionClosed E.cooperativityClosed))

end MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean
end HautevilleHouse
