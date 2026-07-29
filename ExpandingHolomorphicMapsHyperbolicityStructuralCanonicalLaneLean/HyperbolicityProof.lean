import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructural

structure HyperbolicityPackage (G : ComplexManifoldPackage) where
  hyperbolicEstimates : Prop
  uniformExpansion : Prop
  spectralGap : Prop

def HyperbolicityClosed (H : HyperbolicityPackage) : Prop :=
  H.hyperbolicEstimates ∧ H.uniformExpansion ∧ H.spectralGap

end ExpandingHolomorphicMapsHyperbolicityStructural
end HautevilleHouse
