import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean

structure EukaryoticGeneRegulationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EukaryoticGeneRegulationAdmittedObject where
  space : EukaryoticGeneRegulationSpace
  genome : Type
  transcriptionFactors : Type
  bindingSites : Type
  regulatoryNetworkModeled : Prop
  hardywainbergEquilibrium : Prop
  linkageAnalysis : Prop
  sequenceAlignment : Prop
  phylogeneticTree : Prop
  conclusion : regulatoryNetworkModeled ∧ hardywainbergEquilibrium ∧ linkageAnalysis ∧ sequenceAlignment ∧ phylogeneticTree

structure EukaryoticGeneRegulationEndgameState where
  object : EukaryoticGeneRegulationAdmittedObject

def EukaryoticGeneRegulationWitnessClosed (O : EukaryoticGeneRegulationAdmittedObject) : Prop :=
  O.regulatoryNetworkModeled ∧ O.hardywainbergEquilibrium ∧ O.linkageAnalysis ∧ O.sequenceAlignment ∧ O.phylogeneticTree

end MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean
end HautevilleHouse
