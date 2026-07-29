import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematics

structure AssessmentValidity where
  contentValidity : Prop
  constructValidity : Prop
  criterionValidity : Prop
  reliability : Prop
  fairness : Prop

structure AssessmentValidityEvidence (A : AssessmentValidity) where
  contentValidityClosed : A.contentValidity
  constructValidityClosed : A.constructValidity
  criterionValidityClosed : A.criterionValidity
  reliabilityClosed : A.reliability
  fairnessClosed : A.fairness

def AssessmentValidityClosed (A : AssessmentValidity) : Prop :=
  A.contentValidity ∧ A.constructValidity ∧
  A.criterionValidity ∧ A.reliability ∧ A.fairness

theorem assessment_validity_closed_from_evidence (A : AssessmentValidity)
    (E : AssessmentValidityEvidence A) : AssessmentValidityClosed A := by
  exact And.intro E.contentValidityClosed
    (And.intro E.constructValidityClosed
      (And.intro E.criterionValidityClosed
        (And.intro E.reliabilityClosed E.fairnessClosed)))

end ComprehensiveWorksEducationFoundationsMathematics
end HautevilleHouse