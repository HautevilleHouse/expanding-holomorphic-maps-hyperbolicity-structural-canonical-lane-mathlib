import ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean.ExpandingMapsCore

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure HyperbolicStructure (X : Type u) [TopologicalSpace X] [ComplexStructure X] where
  metric : X → X → ℝ
  negativeCurvature : Prop
  geodesicConvexity : Prop
  boundaryCompactness : Prop

structure HyperbolicityEvidence (H : HyperbolicStructure X) where
  negativeCurvatureClosed : H.negativeCurvature
  geodesicConvexityClosed : H.geodesicConvexity
  boundaryCompactnessClosed : H.boundaryCompactness

def HyperbolicityClosed (H : HyperbolicStructure X) : Prop :=
  H.negativeCurvature ∧ H.geodesicConvexity ∧ H.boundaryCompactness

theorem hyperbolicity_closed_from_evidence (H : HyperbolicStructure X) (E : HyperbolicityEvidence H) :
    HyperbolicityClosed H := by
  exact And.intro E.negativeCurvatureClosed (And.intro E.geodesicConvexityClosed E.boundaryCompactnessClosed)

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse