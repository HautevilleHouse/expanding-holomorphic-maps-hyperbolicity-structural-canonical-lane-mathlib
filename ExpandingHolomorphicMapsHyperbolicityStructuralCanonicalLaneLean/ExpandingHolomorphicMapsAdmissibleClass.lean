import canonically.LaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure ExpandingHolomorphicAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  complexStructure : Prop
  hasExpandingMap : Prop
  isCompactHyperbolic : Prop
  conclusion : isCompactHyperbolic

structure AdmissibleClass where
  object : ExpandingHolomorphicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ExpandingMapsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse