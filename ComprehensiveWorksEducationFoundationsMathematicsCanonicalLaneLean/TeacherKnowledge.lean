import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematics

structure TeacherKnowledge where
  contentKnowledge : Prop
  pedagogicalContentKnowledge : Prop
  curricularKnowledge : Prop
  assessmentKnowledge : Prop

structure TeacherKnowledgeEvidence (T : TeacherKnowledge) where
  contentKnowledgeClosed : T.contentKnowledge
  pedagogicalContentKnowledgeClosed : T.pedagogicalContentKnowledge
  curricularKnowledgeClosed : T.curricularKnowledge
  assessmentKnowledgeClosed : T.assessmentKnowledge

def TeacherKnowledgeClosed (T : TeacherKnowledge) : Prop :=
  T.contentKnowledge ∧ T.pedagogicalContentKnowledge ∧
  T.curricularKnowledge ∧ T.assessmentKnowledge

theorem teacher_knowledge_closed_from_evidence (T : TeacherKnowledge)
    (E : TeacherKnowledgeEvidence T) : TeacherKnowledgeClosed T := by
  exact And.intro E.contentKnowledgeClosed
    (And.intro E.pedagogicalContentKnowledgeClosed
      (And.intro E.curricularKnowledgeClosed E.assessmentKnowledgeClosed))

end ComprehensiveWorksEducationFoundationsMathematics
end HautevilleHouse