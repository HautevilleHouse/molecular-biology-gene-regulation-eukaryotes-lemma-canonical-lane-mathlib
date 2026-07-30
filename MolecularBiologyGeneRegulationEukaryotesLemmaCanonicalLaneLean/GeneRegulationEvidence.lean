import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean.EukaryoticTranscriptionRegulation

/-!
# Gene Regulation Evidence Package

This module provides evidence structures and closure propositions for eukaryotic
gene regulation components.
-/

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean

structure PromoterEvidence (P : PromoterPackage) where
  tataBoxPresentClosed : P.tataBoxPresent
  initiatorElementClosed : P.initiatorElement
  downstreamPromoterElementClosed : P.downstreamPromoterElement
  cpgIslandClosed : P.cpgIsland
  promoterProximalElementsClosed : P.promoterProximalElements
  corePromoterAssembledClosed : P.corePromoterAssembled

def PromoterClosed (P : PromoterPackage) : Prop :=
  P.tataBoxPresent ∧ P.initiatorElement ∧ P.downstreamPromoterElement ∧
  P.cpgIsland ∧ P.promoterProximalElements ∧ P.corePromoterAssembled

theorem promoter_closed_from_evidence (P : PromoterPackage) (E : PromoterEvidence P) :
    PromoterClosed P := by
  exact And.intro E.tataBoxPresentClosed
    (And.intro E.initiatorElementClosed
      (And.intro E.downstreamPromoterElementClosed
        (And.intro E.cpgIslandClosed
          (And.intro E.promoterProximalElementsClosed E.corePromoterAssembledClosed))))

structure EnhancerEvidence (E : EnhancerPackage) where
  tissueSpecificFactorsClosed : E.tissueSpecificFactors
  loopingMediatorClosed : E.loopingMediator
  distalActivationClosed : E.distalActivation

def EnhancerClosed (E : EnhancerPackage) : Prop :=
  E.tissueSpecificFactors ∧ E.loopingMediator ∧ E.distalActivation

theorem enhancer_closed_from_evidence (E : EnhancerPackage) (Ev : EnhancerEvidence E) :
    EnhancerClosed E := by
  exact And.intro Ev.tissueSpecificFactorsClosed
    (And.intro Ev.loopingMediatorClosed Ev.distalActivationClosed)

structure ChromatinEvidence (C : ChromatinPackage) where
  histoneModificationsClosed : C.histoneModifications
  dnaMethylationClosed : C.dnaMethylation
  nucleosomePositioningClosed : C.nucleosomePositioning
  openChromatinRegionsClosed : C.openChromatinRegions

def ChromatinClosed (C : ChromatinPackage) : Prop :=
  C.histoneModifications ∧ C.dnaMethylation ∧
  C.nucleosomePositioning ∧ C.openChromatinRegions

theorem chromatin_closed_from_evidence (C : ChromatinPackage) (Ev : ChromatinEvidence C) :
    ChromatinClosed C := by
  exact And.intro Ev.histoneModificationsClosed
    (And.intro Ev.dnaMethylationClosed
      (And.intro Ev.nucleosomePositioningClosed Ev.openChromatinRegionsClosed))

end MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean
end HautevilleHouse