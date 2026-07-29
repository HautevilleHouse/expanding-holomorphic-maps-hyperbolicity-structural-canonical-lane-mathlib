import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructural

-- Structure for expanding map PDE conditions
structure ExpandingMapPDEPackage (G : ComplexManifoldPackage) where
  iteratedMapFamily : Prop
  expansionEstimates : Prop
  backwardIterationWellDefined : Prop

def ExpandingMapPDEClosed (F : ExpandingMapPDEPackage) : Prop :=
  F.iteratedMapFamily ∧ F.expansionEstimates ∧ F.backwardIterationWellDefined

end ExpandingHolomorphicMapsHyperbolicityStructural
end HautevilleHouse
