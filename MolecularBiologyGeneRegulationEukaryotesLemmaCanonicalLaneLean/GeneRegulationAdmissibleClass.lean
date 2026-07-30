import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean

structure GeneRegulationObject where
  eukaryoticCell : Type
  transcriptionNetwork : Type
  chromatinState : Prop
  transcriptionFactorBinding : Prop
  rnaPolymeraseRecruitment : Prop
  expressionOutcome : Prop
  conclusion : expressionOutcome

structure AdmissibleClass where
  object : GeneRegulationObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.expressionOutcome ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean
end HautevilleHouse