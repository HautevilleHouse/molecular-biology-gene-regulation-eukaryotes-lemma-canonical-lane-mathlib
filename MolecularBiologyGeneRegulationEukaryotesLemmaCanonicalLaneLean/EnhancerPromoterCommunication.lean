import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemma

structure EnhancerPromoterCommunicationPackage where
  enhancerElement : Prop
  promoterElement : Prop
  chromatinLooping : Prop
  mediatorComplex : Prop

structure EnhancerPromoterCommunicationEvidence (E : EnhancerPromoterCommunicationPackage) where
  enhancerElementClosed : E.enhancerElement
  promoterElementClosed : E.promoterElement
  chromatinLoopingClosed : E.chromatinLooping
  mediatorComplexClosed : E.mediatorComplex

def EnhancerPromoterCommunicationClosed (E : EnhancerPromoterCommunicationPackage) : Prop :=
  E.enhancerElement ∧ E.promoterElement ∧ E.chromatinLooping ∧ E.mediatorComplex

theorem enhancer_promoter_communication_closed_from_evidence (E : EnhancerPromoterCommunicationPackage) (Ev : EnhancerPromoterCommunicationEvidence E) : EnhancerPromoterCommunicationClosed E := by
  exact And.intro Ev.enhancerElementClosed (And.intro Ev.promoterElementClosed (And.intro Ev.chromatinLoopingClosed Ev.mediatorComplexClosed))

end MolecularBiologyGeneRegulationEukaryotesLemma
end HautevilleHouse