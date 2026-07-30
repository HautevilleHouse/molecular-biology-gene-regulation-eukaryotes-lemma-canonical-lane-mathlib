import canonicalLaneMathlib.AdmissibleClass

/-!
# Eukaryotic Transcription Regulation Package

This module records the eukaryotic transcription regulation machinery: promoters,
activators, repressors, enhancers, chromatin state, and general transcription factors.
-/

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean

structure PromoterPackage where
  tataBoxPresent : Prop
  initiatorElement : Prop
  downstreamPromoterElement : Prop
  cpgIsland : Prop
  promoterProximalElements : Prop
  corePromoterAssembled : Prop

structure ActivatorPackage where
  dnaBindingDomain : Type u
  activationDomain : Type v
  specificDnaBinding : Prop
  recruitmentMediator : Prop
  chromatinRemodeling : Prop

structure RepressorPackage where
  dnaBindingDomain : Type u
  repressionDomain : Type v
  specificDnaBinding : Prop
  histoneDeacetylaseRecruitment : Prop
  chromatinCondensation : Prop

structure EnhancerPackage where
  enhancerSequence : Type u
  tissueSpecificFactors : Prop
  loopingMediator : Prop
  distalActivation : Prop

structure ChromatinPackage where
  histoneModifications : Type u
  dnaMethylation : Type v
  nucleosomePositioning : Prop
  openChromatinRegions : Prop

structure GeneralTranscriptionFactorPackage (P : PromoterPackage) where
  tfiid : Prop
  tfiia : Prop
  tfiib : Prop
  tfiie : Prop
  tfiif : Prop
  tfiih : Prop
  preinitiationComplexFormed : Prop

end MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean
end HautevilleHouse