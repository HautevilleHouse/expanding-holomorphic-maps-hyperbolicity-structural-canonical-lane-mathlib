import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure ExpandingHolomorphicMap (M : Type) [TopologicalSpace M] [ComplexManifold M] where
  f : M → M
  holomorphic : Prop
  expanding : Prop
  expandingCondition : ∃ λ > 1, ∀ x y, dist (f x) (f y) ≥ λ * dist x y

def ExpandingHolomorphicMapClosed (E : ExpandingHolomorphicMap M) : Prop :=
  E.expanding ∧ E.holomorphic

theorem expanding_holomorphic_map_closed (E : ExpandingHolomorphicMap M) (hE : ExpandingHolomorphicMapClosed E) : ExpandingHolomorphicMapClosed E := hE

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse