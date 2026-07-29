import canonicalLaneMathlib.AdmissibleClass
import ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean.HolomorphicMap

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure ExpandingMap (X : RiemannSurface) where
  map : HolomorphicMap X X
  expansionFactor : ℝ
  expansionFactorPos : expansionFactor > 1
  expandingCondition : Prop

structure ExpandingMapEvidence (X : RiemannSurface) (f : ExpandingMap X) where
  expansionFactorPosClosed : f.expansionFactorPos
  expandingConditionClosed : f.expandingCondition

def ExpandingMapClosed (X : RiemannSurface) (f : ExpandingMap X) : Prop :=
  f.expansionFactorPos ∧ f.expandingCondition

theorem expanding_map_closed_from_evidence (X : RiemannSurface) (f : ExpandingMap X)
    (E : ExpandingMapEvidence X f) : ExpandingMapClosed X f := by
  exact And.intro E.expansionFactorPosClosed E.expandingConditionClosed

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse