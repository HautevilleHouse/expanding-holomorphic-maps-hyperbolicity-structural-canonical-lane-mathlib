import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure RiemannSurface where
  carrier : Type u
  topology : TopologicalSpace carrier
  complexStructure : Prop
  dimensionOne : Prop
  hyperbolicMetric : Prop

structure RiemannSurfaceEvidence (R : RiemannSurface) where
  complexStructureClosed : R.complexStructure
  dimensionOneClosed : R.dimensionOne
  hyperbolicMetricClosed : R.hyperbolicMetric

def RiemannSurfaceClosed (R : RiemannSurface) : Prop :=
  R.complexStructure ∧ R.dimensionOne ∧ R.hyperbolicMetric

theorem riemann_surface_closed_from_evidence (R : RiemannSurface) (E : RiemannSurfaceEvidence R) :
    RiemannSurfaceClosed R := by
  exact And.intro E.complexStructureClosed (And.intro E.dimensionOneClosed E.hyperbolicMetricClosed)

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse