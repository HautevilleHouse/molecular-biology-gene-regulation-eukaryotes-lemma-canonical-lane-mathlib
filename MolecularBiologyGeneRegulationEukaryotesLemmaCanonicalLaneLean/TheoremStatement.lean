import HautevilleHouse.MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean

structure GeneRegulationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeneRegulationAdmittedObject where
  space : GeneRegulationSpace
  eukaryoticGeneRegulationModel : Prop
  regulatoryNetworkConsistent : Prop
  bridgeModel : Type
  bridgeTopology : TopologicalSpace bridgeModel
  homeomorphicToBridge : Prop
  conclusion : homeomorphicToBridge

def GeneRegulationWitnessClosed (O : GeneRegulationAdmittedObject) : Prop :=
  O.homeomorphicToBridge

end MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean
end HautevilleHouse
