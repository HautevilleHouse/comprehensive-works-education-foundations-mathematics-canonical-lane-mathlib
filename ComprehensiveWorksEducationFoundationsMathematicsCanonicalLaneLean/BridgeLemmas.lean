import ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WorksEducationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComprehensiveWorksEducationFoundationsMathematicsCanonicalLaneLean
end HautevilleHouse