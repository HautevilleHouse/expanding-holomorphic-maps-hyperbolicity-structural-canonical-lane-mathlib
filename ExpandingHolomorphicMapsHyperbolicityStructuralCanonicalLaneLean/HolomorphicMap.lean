import canonicalLaneMathlib.AdmissibleClass
import ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean.RiemannSurface

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure HolomorphicMap (X Y : RiemannSurface) where
  underlyingMap : X.carrier → Y.carrier
  holomorphic : Prop
  derivative : Type u
  derivativeContinuous : Prop

structure HolomorphicMapEvidence {X Y : RiemannSurface} (f : HolomorphicMap X Y) where
  holomorphicClosed : f.holomorphic
  derivativeContinuousClosed : f.derivativeContinuous

def HolomorphicMapClosed {X Y : RiemannSurface} (f : HolomorphicMap X Y) : Prop :=
  f.holomorphic ∧ f.derivativeContinuous

theorem holomorphic_map_closed_from_evidence {X Y : RiemannSurface} (f : HolomorphicMap X Y)
    (E : HolomorphicMapEvidence f) : HolomorphicMapClosed f := by
  exact And.intro E.holomorphicClosed E.derivativeContinuousClosed

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse