import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure ExpandingHolomorphicMap (M : Type u) [TopologicalSpace M] [ComplexManifold M] where
  f : M → M
  holomorphic : Prop
  expandingCondition : Prop
  hyperbolicityCondition : Prop
  fHolomorphic : holomorphic
  fExpanding : expandingCondition
  fHyperbolic : hyperbolicityCondition

structure ExpandingMapPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  complexStructure : ComplexManifold manifold
  expandingMap : ExpandingHolomorphicMap manifold
  spectralGap : Prop
  invariantMeasure : Prop
  spectralGapProp : spectralGap
  invariantMeasureProp : invariantMeasure

structure ExpandingMapEvidence (E : ExpandingMapPackage) where
  spectralGapClosed : E.spectralGap
  invariantMeasureClosed : E.invariantMeasure

def ExpandingMapClosed (E : ExpandingMapPackage) : Prop :=
  E.spectralGap ∧ E.invariantMeasure

theorem expanding_map_closed_from_evidence (E : ExpandingMapPackage) (Ev : ExpandingMapEvidence E) : ExpandingMapClosed E := by
  exact And.intro Ev.spectralGapClosed Ev.invariantMeasureClosed

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse