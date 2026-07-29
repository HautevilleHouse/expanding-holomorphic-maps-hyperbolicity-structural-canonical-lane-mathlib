import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure ExpandingAdmittedObject where
  surface : RiemannSurface
  map : ExpandingMap surface
  hyperbolicity : HyperbolicityPackage surface map
  invariantMeasure : InvariantMeasurePackage surface map
  conclusion : Prop

structure ExpandingAdmissibleClass where
  object : ExpandingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ExpandingAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse