import ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean.CurriculumFramework

/-!
# Learning Domain Package
-/

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean

structure LearningDomainPackage (G : EducationalStandardPackage) where
  domainName : String
  subdomains : List String
  learningObjectives : Prop
  prerequisiteStructure : Prop
  progression : Prop

structure LearningDomainEvidence {G : EducationalStandardPackage}
    (L : LearningDomainPackage G) where
  learningObjectivesClosed : L.learningObjectives
  prerequisiteStructureClosed : L.prerequisiteStructure
  progressionClosed : L.progression

def LearningDomainClosed {G : EducationalStandardPackage}
    (L : LearningDomainPackage G) : Prop :=
  L.learningObjectives ∧ L.prerequisiteStructure ∧ L.progression

theorem learning_domain_closed_from_evidence
    {G : EducationalStandardPackage} (L : LearningDomainPackage G)
    (E : LearningDomainEvidence L) : LearningDomainClosed L := by
  exact And.intro E.learningObjectivesClosed
    (And.intro E.prerequisiteStructureClosed E.progressionClosed)

end ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean
end HautevilleHouse