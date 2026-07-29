import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean

structure PedagogyModel where
  learnerStage : Type u
  knowledgeState : Type v
  instructionalDesign : Type w
  progressionRelation : learnerStage → learnerStage → Prop
  learningObjective : Prop

structure PedagogyEvidence (P : PedagogyModel) where
  learnerStageDefined : True
  knowledgeStateDefined : True
  instructionalDesignDefined : True
  learningObjectiveClosed : P.learningObjective

def PedagogyClosed (P : PedagogyModel) : Prop :=
  P.learningObjective

theorem pedagogy_closed_from_evidence (P : PedagogyModel) (E : PedagogyEvidence P) :
    PedagogyClosed P :=
  E.learningObjectiveClosed

end ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean
end HautevilleHouse