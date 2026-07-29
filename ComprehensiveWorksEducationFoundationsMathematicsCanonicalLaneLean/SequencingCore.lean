import ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean.LearningDomain

/-!
# Sequencing Core Package
-/

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean

structure SequencingCorePackage {G : EducationalStandardPackage}
    (L : LearningDomainPackage G) where
  logicalSequence : Prop
  prerequisiteChain : Prop
  scaffolding : Prop
  pacingGuide : Prop

structure SequencingCoreEvidence {G : EducationalStandardPackage}
    {L : LearningDomainPackage G} (S : SequencingCorePackage L) where
  logicalSequenceClosed : S.logicalSequence
  prerequisiteChainClosed : S.prerequisiteChain
  scaffoldingClosed : S.scaffolding
  pacingGuideClosed : S.pacingGuide

def SequencingCoreClosed {G : EducationalStandardPackage}
    {L : LearningDomainPackage G} (S : SequencingCorePackage L) : Prop :=
  S.logicalSequence ∧ S.prerequisiteChain ∧ S.scaffolding ∧ S.pacingGuide

theorem sequencing_core_closed_from_evidence
    {G : EducationalStandardPackage} {L : LearningDomainPackage G}
    (S : SequencingCorePackage L) (E : SequencingCoreEvidence S) :
    SequencingCoreClosed S := by
  exact And.intro E.logicalSequenceClosed
    (And.intro E.prerequisiteChainClosed
      (And.intro E.scaffoldingClosed E.pacingGuideClosed))

end ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean
end HautevilleHouse