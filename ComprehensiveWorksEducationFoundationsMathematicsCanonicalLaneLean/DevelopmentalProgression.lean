import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean

structure DevelopmentalProgressionPackage where
  earlyNumeracySkills : Prop
  arithmeticReasoning : Prop
  geometricSpatialReasoning : Prop
  algebraicThinking : Prop
  probabilisticReasoning : Prop

structure DevelopmentalProgressionEvidence (D : DevelopmentalProgressionPackage) where
  earlyNumeracySkillsClosed : D.earlyNumeracySkills
  arithmeticReasoningClosed : D.arithmeticReasoning
  geometricSpatialReasoningClosed : D.geometricSpatialReasoning
  algebraicThinkingClosed : D.algebraicThinking
  probabilisticReasoningClosed : D.probabilisticReasoning

def DevelopmentalProgressionClosed (D : DevelopmentalProgressionPackage) : Prop :=
  D.earlyNumeracySkills ∧ D.arithmeticReasoning ∧ D.geometricSpatialReasoning ∧ D.algebraicThinking ∧ D.probabilisticReasoning

theorem developmental_progression_closed_from_evidence (D : DevelopmentalProgressionPackage) (E : DevelopmentalProgressionEvidence D) : DevelopmentalProgressionClosed D := by
  exact And.intro E.earlyNumeracySkillsClosed
    (And.intro E.arithmeticReasoningClosed
      (And.intro E.geometricSpatialReasoningClosed
        (And.intro E.algebraicThinkingClosed E.probabilisticReasoningClosed)))

end ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean
end HautevilleHouse