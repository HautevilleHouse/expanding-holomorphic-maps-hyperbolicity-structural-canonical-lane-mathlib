import canonicalLaneMathlib.AdmissibleClass
import ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

def gateClosed (A : ExpandingAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ExpandingAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse