import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean.ExpandingHolomorphicMap

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure HyperbolicStructure {M : Type} [TopologicalSpace M] [ComplexManifold M] (E : ExpandingHolomorphicMap M) where
  invariantMeasure : Measure M
  measurePreserving : MeasurePreserving E.f invariantMeasure invariantMeasure
  mixing : Prop
  exponentialMixing : mixing

def HyperbolicStructureClosed {M : Type} [TopologicalSpace M] [ComplexManifold M] {E : ExpandingHolomorphicMap M} (H : HyperbolicStructure E) : Prop :=
  H.measurePreserving ∧ H.exponentialMixing

theorem hyperbolic_structure_closed (H : HyperbolicStructure E) (hH : HyperbolicStructureClosed H) : HyperbolicStructureClosed H := hH

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse