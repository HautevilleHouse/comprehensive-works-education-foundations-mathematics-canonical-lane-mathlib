import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean

structure MathematicsEducationResearchBodies where
  cognitiveScienceBasis : Prop
  socioculturalTheories : Prop
  historicalPerspectives : Prop
  comparativeStudies : Prop
  empiricalEvidence : Prop

structure ResearchEvidence (R : MathematicsEducationResearchBodies) where
  cognitiveScienceBasisClosed : R.cognitiveScienceBasis
  socioculturalTheoriesClosed : R.socioculturalTheories
  historicalPerspectivesClosed : R.historicalPerspectives
  comparativeStudiesClosed : R.comparativeStudies
  empiricalEvidenceClosed : R.empiricalEvidence

def MathematicsEducationResearchBodiesClosed (R : MathematicsEducationResearchBodies) : Prop :=
  R.cognitiveScienceBasis ∧ R.socioculturalTheories ∧ R.historicalPerspectives ∧ R.comparativeStudies ∧ R.empiricalEvidence

theorem mathematics_education_research_bodies_closed_from_evidence (R : MathematicsEducationResearchBodies)
    (E : ResearchEvidence R) : MathematicsEducationResearchBodiesClosed R := by
  exact And.intro E.cognitiveScienceBasisClosed
    (And.intro E.socioculturalTheoriesClosed
      (And.intro E.historicalPerspectivesClosed
        (And.intro E.comparativeStudiesClosed E.empiricalEvidenceClosed)))

end ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean
end HautevilleHouse