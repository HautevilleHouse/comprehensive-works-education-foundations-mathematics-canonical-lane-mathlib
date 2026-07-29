import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean

structure EpistemologicalFoundations where
  constructivism : Prop
  socioculturalTheory : Prop
  embodiment : Prop
  criticalPedagogy : Prop
  knowledgeConstruction : Prop

structure EpistemicEvidence (E : EpistemologicalFoundations) where
  constructivismClosed : E.constructivism
  socioculturalTheoryClosed : E.socioculturalTheory
  embodimentClosed : E.embodiment
  criticalPedagogyClosed : E.criticalPedagogy
  knowledgeConstructionClosed : E.knowledgeConstruction

def EpistemicFoundationsClosed (E : EpistemologicalFoundations) : Prop :=
  E.constructivism ∧ E.socioculturalTheory ∧ E.embodiment ∧ E.criticalPedagogy ∧ E.knowledgeConstruction

theorem epistemic_foundations_closed_from_evidence (E : EpistemologicalFoundations) (Ev : EpistemicEvidence E) :
    EpistemicFoundationsClosed E :=
  And.intro Ev.constructivismClosed (And.intro Ev.socioculturalTheoryClosed (And.intro Ev.embodimentClosed (And.intro Ev.criticalPedagogyClosed Ev.knowledgeConstructionClosed)))

end ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean
end HautevilleHouse