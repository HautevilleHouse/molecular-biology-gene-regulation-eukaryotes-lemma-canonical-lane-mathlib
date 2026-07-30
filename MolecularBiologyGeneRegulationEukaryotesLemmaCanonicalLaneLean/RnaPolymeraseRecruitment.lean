import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean

structure RnaPolymeraseRecruitmentPackage where
  preInitiationComplexAssembly : Prop
  transcriptionInitiation : Prop
  promoterEscape : Prop
  pausingAndRelease : Prop
  elongation : Prop

def RnaPolIIRecruitmentClosed (R : RnaPolymeraseRecruitmentPackage) : Prop :=
  R.preInitiationComplexAssembly ∧ R.transcriptionInitiation ∧ R.promoterEscape ∧
  R.pausingAndRelease ∧ R.elongation

structure RnaPolymeraseRecruitmentEvidence (R : RnaPolymeraseRecruitmentPackage) where
  preInitiationComplexAssemblyClosed : R.preInitiationComplexAssembly
  transcriptionInitiationClosed : R.transcriptionInitiation
  promoterEscapeClosed : R.promoterEscape
  pausingAndReleaseClosed : R.pausingAndRelease
  elongationClosed : R.elongation

theorem rna_polii_recruitment_closed_from_evidence (R : RnaPolymeraseRecruitmentPackage)
    (E : RnaPolymeraseRecruitmentEvidence R) : RnaPolIIRecruitmentClosed R := by
  exact And.intro E.preInitiationComplexAssemblyClosed
    (And.intro E.transcriptionInitiationClosed
      (And.intro E.promoterEscapeClosed
        (And.intro E.pausingAndReleaseClosed E.elongationClosed)))

end MolecularBiologyGeneRegulationEukaryotesLemmaCanonicalLaneLean
end HautevilleHouse
