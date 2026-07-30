import Mathlib.Probability.Distributions

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean

structure LinkageAnalysisPackage where
  recombinationFraction : Prop
  lodScore : Prop
  geneticMapDistance : Prop
  linkageDisequilibrium : Prop
  haplotypeAnalysis : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  recombinationFractionClosed : L.recombinationFraction
  lodScoreClosed : L.lodScore
  geneticMapDistanceClosed : L.geneticMapDistance
  linkageDisequilibriumClosed : L.linkageDisequilibrium
  haplotypeAnalysisClosed : L.haplotypeAnalysis

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.recombinationFraction ∧ L.lodScore ∧ L.geneticMapDistance ∧ L.linkageDisequilibrium ∧ L.haplotypeAnalysis

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  exact And.intro E.recombinationFractionClosed
    (And.intro E.lodScoreClosed
      (And.intro E.geneticMapDistanceClosed
        (And.intro E.linkageDisequilibriumClosed E.haplotypeAnalysisClosed)))

end MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean
end HautevilleHouse
