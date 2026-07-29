import ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean.UniversalAccess

/-!
# Pedagogical Approaches Package
-/

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean

structure PedagogicalApproachesPackage {G : EducationalStandardPackage}
    {L : LearningDomainPackage G} {S : SequencingCorePackage L}
    {A : AssessmentDesignPackage S} (U : UniversalAccessPackage A) where
  inquiryBasedLearning : Prop
  problemBasedLearning : Prop
  directInstruction : Prop
  collaborativeLearning : Prop
  differentiatedInstruction : Prop

structure PedagogicalApproachesEvidence {G : EducationalStandardPackage}
    {L : LearningDomainPackage G} {S : SequencingCorePackage L}
    {A : AssessmentDesignPackage S} {U : UniversalAccessPackage A}
    (P : PedagogicalApproachesPackage U) where
  inquiryBasedLearningClosed : P.inquiryBasedLearning
  problemBasedLearningClosed : P.problemBasedLearning
  directInstructionClosed : P.directInstruction
  collaborativeLearningClosed : P.collaborativeLearning
  differentiatedInstructionClosed : P.differentiatedInstruction

def PedagogicalApproachesClosed {G : EducationalStandardPackage}
    {L : LearningDomainPackage G} {S : SequencingCorePackage L}
    {A : AssessmentDesignPackage S} {U : UniversalAccessPackage A}
    (P : PedagogicalApproachesPackage U) : Prop :=
  P.inquiryBasedLearning ∧ P.problemBasedLearning ∧ P.directInstruction ∧
  P.collaborativeLearning ∧ P.differentiatedInstruction

theorem pedagogical_approaches_closed_from_evidence
    {G : EducationalStandardPackage} {L : LearningDomainPackage G}
    {S : SequencingCorePackage L} {A : AssessmentDesignPackage S}
    {U : UniversalAccessPackage A} {P : PedagogicalApproachesPackage U}
    (E : PedagogicalApproachesEvidence P) : PedagogicalApproachesClosed P := by
  exact And.intro E.inquiryBasedLearningClosed
    (And.intro E.problemBasedLearningClosed
      (And.intro E.directInstructionClosed
        (And.intro E.collaborativeLearningClosed E.differentiatedInstructionClosed)))

end ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean
end HautevilleHouse