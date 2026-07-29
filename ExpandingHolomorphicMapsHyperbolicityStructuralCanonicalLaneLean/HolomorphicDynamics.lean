import ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean.ComplexStructure

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure HolomorphicDynamics (C : ComplexStructure) where
  map : C.manifold → C.manifold
  holomorphicMap : Prop
  iterationStability : Prop
  criticalOrbitBehaviour : Prop

structure HolomorphicDynamicsEvidence (C : ComplexStructure) (H : HolomorphicDynamics C) where
  holomorphicMapClosed : H.holomorphicMap
  iterationStabilityClosed : H.iterationStability
  criticalOrbitBehaviourClosed : H.criticalOrbitBehaviour

def HolomorphicDynamicsClosed (C : ComplexStructure) (H : HolomorphicDynamics C) : Prop :=
  H.holomorphicMap ∧ H.iterationStability ∧ H.criticalOrbitBehaviour

theorem holomorphic_dynamics_closed_from_evidence (C : ComplexStructure) (H : HolomorphicDynamics C) 
    (E : HolomorphicDynamicsEvidence C H) : HolomorphicDynamicsClosed C H := by
  exact And.intro E.holomorphicMapClosed (And.intro E.iterationStabilityClosed E.criticalOrbitBehaviourClosed)

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse
