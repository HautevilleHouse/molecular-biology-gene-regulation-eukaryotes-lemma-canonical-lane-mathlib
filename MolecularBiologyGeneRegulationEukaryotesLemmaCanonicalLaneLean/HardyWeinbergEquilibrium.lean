import Mathlib.Probability.Distributions

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean

structure HardyWeinbergPackage where
  populationGenotypeFrequencies : Prop
  randomMatingAssumption : Prop
  noEvolutionaryForces : Prop
  equilibriumFormula : Prop
  chiSquaredTest : Prop

structure HardyWeinbergEvidence (H : HardyWeinbergPackage) where
  populationGenotypeFrequenciesClosed : H.populationGenotypeFrequencies
  randomMatingAssumptionClosed : H.randomMatingAssumption
  noEvolutionaryForcesClosed : H.noEvolutionaryForces
  equilibriumFormulaClosed : H.equilibriumFormula
  chiSquaredTestClosed : H.chiSquaredTest

def HardyWeinbergClosed (H : HardyWeinbergPackage) : Prop :=
  H.populationGenotypeFrequencies ∧ H.randomMatingAssumption ∧ H.noEvolutionaryForces ∧ H.equilibriumFormula ∧ H.chiSquaredTest

theorem hardywainberg_closed_from_evidence (H : HardyWeinbergPackage) (E : HardyWeinbergEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.populationGenotypeFrequenciesClosed
    (And.intro E.randomMatingAssumptionClosed
      (And.intro E.noEvolutionaryForcesClosed
        (And.intro E.equilibriumFormulaClosed E.chiSquaredTestClosed)))

end MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean
end HautevilleHouse
