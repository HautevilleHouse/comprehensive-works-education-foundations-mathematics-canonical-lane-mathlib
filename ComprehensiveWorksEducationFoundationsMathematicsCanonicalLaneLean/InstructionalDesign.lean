import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean

structure InstructionalDesign where
  strategyType : String
  learnerCentered : Bool
  evidenceBased : Bool
  adaptivity : Prop

def strategyCloses (I : InstructionalDesign) : Prop :=
  I.learnerCentered = true ∧ I.evidenceBased = true ∧ I.adaptivity

structure DesignEvidence (I : InstructionalDesign) where
  strategyTypeSpecified : True
  learnerCenteredTrue : I.learnerCentered = true
  evidenceBasedTrue : I.evidenceBased = true
  adaptivityClosed : I.adaptivity

theorem instructional_design_closed_from_evidence (I : InstructionalDesign) (E : DesignEvidence I) :
    strategyCloses I :=
  And.intro E.learnerCenteredTrue (And.intro E.evidenceBasedTrue E.adaptivityClosed)

end ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean
end HautevilleHouse