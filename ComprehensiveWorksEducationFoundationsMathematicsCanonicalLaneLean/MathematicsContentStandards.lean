import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematics

structure MathematicsContentStandards where
  numberAndOperations : Prop
  algebraAndFunctions : Prop
  geometryAndMeasurement : Prop
  dataAndProbability : Prop
  mathematicalPractice : Prop

structure MathematicsContentStandardsEvidence (M : MathematicsContentStandards) where
  numberAndOperationsClosed : M.numberAndOperations
  algebraAndFunctionsClosed : M.algebraAndFunctions
  geometryAndMeasurementClosed : M.geometryAndMeasurement
  dataAndProbabilityClosed : M.dataAndProbability
  mathematicalPracticeClosed : M.mathematicalPractice

def MathematicsContentStandardsClosed (M : MathematicsContentStandards) : Prop :=
  M.numberAndOperations ∧ M.algebraAndFunctions ∧
  M.geometryAndMeasurement ∧ M.dataAndProbability ∧ M.mathematicalPractice

theorem mathematics_content_standards_closed_from_evidence
    (M : MathematicsContentStandards)
    (E : MathematicsContentStandardsEvidence M) : MathematicsContentStandardsClosed M := by
  exact And.intro E.numberAndOperationsClosed
    (And.intro E.algebraAndFunctionsClosed
      (And.intro E.geometryAndMeasurementClosed
        (And.intro E.dataAndProbabilityClosed E.mathematicalPracticeClosed)))

end ComprehensiveWorksEducationFoundationsMathematics
end HautevilleHouse