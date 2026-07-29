import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean

structure FoundationalMathematicsCurriculum where
  arithmeticFoundations : Prop
  algebraFoundations : Prop
  geometryFoundations : Prop
  calculusFoundations : Prop
  logicFoundations : Prop

structure FoundationalMathematicsEvidence (C : FoundationalMathematicsCurriculum) where
  arithmeticFoundationsClosed : C.arithmeticFoundations
  algebraFoundationsClosed : C.algebraFoundations
  geometryFoundationsClosed : C.geometryFoundations
  calculusFoundationsClosed : C.calculusFoundations
  logicFoundationsClosed : C.logicFoundations

def FoundationalMathematicsCurriculumClosed (C : FoundationalMathematicsCurriculum) : Prop :=
  C.arithmeticFoundations ∧ C.algebraFoundations ∧ C.geometryFoundations ∧ C.calculusFoundations ∧ C.logicFoundations

theorem foundational_mathematics_curriculum_closed_from_evidence (C : FoundationalMathematicsCurriculum)
    (E : FoundationalMathematicsEvidence C) : FoundationalMathematicsCurriculumClosed C := by
  exact And.intro E.arithmeticFoundationsClosed
    (And.intro E.algebraFoundationsClosed
      (And.intro E.geometryFoundationsClosed
        (And.intro E.calculusFoundationsClosed E.logicFoundationsClosed)))

end ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean
end HautevilleHouse