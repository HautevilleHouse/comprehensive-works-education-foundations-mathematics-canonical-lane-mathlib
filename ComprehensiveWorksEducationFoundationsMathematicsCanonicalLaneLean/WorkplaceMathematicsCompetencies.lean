import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean

structure WorkplaceMathematicsCompetencies where
  numeracySkills : Prop
  dataInterpretation : Prop
  financialLiteracy : Prop
  technicalMathematics : Prop
  problemSolving : Prop

structure WorkplaceMathematicsEvidence (W : WorkplaceMathematicsCompetencies) where
  numeracySkillsClosed : W.numeracySkills
  dataInterpretationClosed : W.dataInterpretation
  financialLiteracyClosed : W.financialLiteracy
  technicalMathematicsClosed : W.technicalMathematics
  problemSolvingClosed : W.problemSolving

def WorkplaceMathematicsCompetenciesClosed (W : WorkplaceMathematicsCompetencies) : Prop :=
  W.numeracySkills ∧ W.dataInterpretation ∧ W.financialLiteracy ∧ W.technicalMathematics ∧ W.problemSolving

theorem workplace_mathematics_competencies_closed_from_evidence (W : WorkplaceMathematicsCompetencies)
    (E : WorkplaceMathematicsEvidence W) : WorkplaceMathematicsCompetenciesClosed W := by
  exact And.intro E.numeracySkillsClosed
    (And.intro E.dataInterpretationClosed
      (And.intro E.financialLiteracyClosed
        (And.intro E.technicalMathematicsClosed E.problemSolvingClosed)))

end ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean
end HautevilleHouse