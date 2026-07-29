import ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure ExpandingMapCore (X : Type u) [TopologicalSpace X] where
  map : X → X
  expansionFactor : ℝ
  expansionProperty : ∀ x y : X, dist (map x) (map y) ≥ expansionFactor * dist x y
  holomorphicProperty : Prop
  hyperbolicityConsequence : Prop

structure ExpandingMapCoreEvidence (C : ExpandingMapCore X) where
  expansionPropertyClosed : C.expansionProperty
  holomorphicPropertyClosed : C.holomorphicProperty
  hyperbolicityConsequenceClosed : C.hyperbolicityConsequence

def ExpandingMapCoreClosed (C : ExpandingMapCore X) : Prop :=
  C.expansionProperty ∧ C.holomorphicProperty ∧ C.hyperbolicityConsequence

theorem expanding_map_core_closed_from_evidence (C : ExpandingMapCore X) (E : ExpandingMapCoreEvidence C) :
    ExpandingMapCoreClosed C := by
  exact And.intro E.expansionPropertyClosed (And.intro E.holomorphicPropertyClosed E.hyperbolicityConsequenceClosed)

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse