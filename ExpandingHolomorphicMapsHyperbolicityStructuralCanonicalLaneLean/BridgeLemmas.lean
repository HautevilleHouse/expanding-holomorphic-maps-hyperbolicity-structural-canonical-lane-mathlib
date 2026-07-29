import canonicalLaneMathlib.AdmissibleClass
import ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

def bridgeClosed (A : ExpandingAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : ExpandingAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse