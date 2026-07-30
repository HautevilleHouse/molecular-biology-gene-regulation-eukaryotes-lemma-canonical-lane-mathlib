import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean

structure SequenceAlignmentPackage where
  pairwiseAlignment : Prop
  multipleSequenceAlignment : Prop
  substitutionMatrix : Prop
  gapPenalty : Prop
  alignmentScore : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  pairwiseAlignmentClosed : S.pairwiseAlignment
  multipleSequenceAlignmentClosed : S.multipleSequenceAlignment
  substitutionMatrixClosed : S.substitutionMatrix
  gapPenaltyClosed : S.gapPenalty
  alignmentScoreClosed : S.alignmentScore

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.pairwiseAlignment ∧ S.multipleSequenceAlignment ∧ S.substitutionMatrix ∧ S.gapPenalty ∧ S.alignmentScore

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.pairwiseAlignmentClosed
    (And.intro E.multipleSequenceAlignmentClosed
      (And.intro E.substitutionMatrixClosed
        (And.intro E.gapPenaltyClosed E.alignmentScoreClosed)))

end MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean
end HautevilleHouse
