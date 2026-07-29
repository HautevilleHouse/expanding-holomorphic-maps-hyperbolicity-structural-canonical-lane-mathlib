import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ExpandingMapClosed (admittedClosure A).1

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact (admittedClosure A).2.1

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse