import MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean.SequenceAlignment

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean

structure PhylogeneticsPackage where
  speciesList : List String
  geneticDistanceMatrix : List (List ℝ)
  treeTopology : Prop
  branchLengths : Prop
  phylogeneticTree : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  phylogeneticTreeClosed : P.phylogeneticTree

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.treeTopology ∧ P.branchLengths ∧ P.phylogeneticTree

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.treeTopologyClosed (And.intro E.branchLengthsClosed E.phylogeneticTreeClosed)

end MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean
end HautevilleHouse
