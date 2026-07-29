import ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean

structure AdmissibleClass where
  object : WorksEducationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WorksEducationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean
end HautevilleHouse