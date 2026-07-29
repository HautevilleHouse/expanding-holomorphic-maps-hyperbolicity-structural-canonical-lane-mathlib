import canonicalLaneMathlib.AdmissibleClass
import ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean.Hyperbolicity

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure InvariantMeasurePackage (X : RiemannSurface) (f : ExpandingMap X) where
  invariantMeasure : Type u
  measurePreserving : Prop
  ergodicity : Prop
  mixing : Prop

structure InvariantMeasureEvidence (X : RiemannSurface) (f : ExpandingMap X)
    (M : InvariantMeasurePackage X f) where
  measurePreservingClosed : M.measurePreserving
  ergodicityClosed : M.ergodicity
  mixingClosed : M.mixing

def InvariantMeasureClosed (X : RiemannSurface) (f : ExpandingMap X)
    (M : InvariantMeasurePackage X f) : Prop :=
  M.measurePreserving ∧ M.ergodicity ∧ M.mixing

theorem invariant_measure_closed_from_evidence (X : RiemannSurface) (f : ExpandingMap X)
    (M : InvariantMeasurePackage X f) (E : InvariantMeasureEvidence X f M) :
    InvariantMeasureClosed X f M := by
  exact And.intro E.measurePreservingClosed (And.intro E.ergodicityClosed E.mixingClosed)

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse