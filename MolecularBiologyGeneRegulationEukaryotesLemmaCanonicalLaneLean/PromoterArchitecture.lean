import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean

structure PromoterArchitecturePackage where
  corePromoterElements : Prop
  proximalRegulatoryRegion : Prop
  distalEnhancers : Prop
  chromatinAccessibility : Prop
  promoterCompetence : Prop

def PromoterArchitectureClosed (P : PromoterArchitecturePackage) : Prop :=
  P.corePromoterElements ∧ P.proximalRegulatoryRegion ∧ P.distalEnhancers ∧
  P.chromatinAccessibility ∧ P.promoterCompetence

structure PromoterArchitectureEvidence (P : PromoterArchitecturePackage) where
  corePromoterElementsClosed : P.corePromoterElements
  proximalRegulatoryRegionClosed : P.proximalRegulatoryRegion
  distalEnhancersClosed : P.distalEnhancers
  chromatinAccessibilityClosed : P.chromatinAccessibility
  promoterCompetenceClosed : P.promoterCompetence

theorem promoter_architecture_closed_from_evidence (P : PromoterArchitecturePackage)
    (E : PromoterArchitectureEvidence P) : PromoterArchitectureClosed P := by
  exact And.intro E.corePromoterElementsClosed
    (And.intro E.proximalRegulatoryRegionClosed
      (And.intro E.distalEnhancersClosed
        (And.intro E.chromatinAccessibilityClosed E.promoterCompetenceClosed)))

end MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean
end HautevilleHouse
