import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean

structure CognitiveModelsPackage where
  conceptualUnderstanding : Prop
  proceduralFluency : Prop
  strategicCompetence : Prop
  adaptiveReasoning : Prop
  productiveDisposition : Prop

structure CognitiveModelsEvidence (C : CognitiveModelsPackage) where
  conceptualUnderstandingClosed : C.conceptualUnderstanding
  proceduralFluencyClosed : C.proceduralFluency
  strategicCompetenceClosed : C.strategicCompetence
  adaptiveReasoningClosed : C.adaptiveReasoning
  productiveDispositionClosed : C.productiveDisposition

def CognitiveModelsClosed (C : CognitiveModelsPackage) : Prop :=
  C.conceptualUnderstanding ∧ C.proceduralFluency ∧ C.strategicCompetence ∧ C.adaptiveReasoning ∧ C.productiveDisposition

theorem cognitive_models_closed_from_evidence (C : CognitiveModelsPackage) (E : CognitiveModelsEvidence C) : CognitiveModelsClosed C := by
  exact And.intro E.conceptualUnderstandingClosed
    (And.intro E.proceduralFluencyClosed
      (And.intro E.strategicCompetenceClosed
        (And.intro E.adaptiveReasoningClosed E.productiveDispositionClosed)))

end ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean
end HautevilleHouse