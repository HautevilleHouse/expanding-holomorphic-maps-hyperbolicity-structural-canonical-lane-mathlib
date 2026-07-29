import ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean.HolomorphicDynamics

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure HyperbolicityCriteria (C : ComplexStructure) (H : HolomorphicDynamics C) where
  expandingCondition : Prop
  uniformExpansion : Prop
  invariantCones : Prop
  markovPartition : Prop

structure HyperbolicityCriteriaEvidence (C : ComplexStructure) (H : HolomorphicDynamics C) 
    (K : HyperbolicityCriteria C H) where
  expandingConditionClosed : K.expandingCondition
  uniformExpansionClosed : K.uniformExpansion
  invariantConesClosed : K.invariantCones
  markovPartitionClosed : K.markovPartition

def HyperbolicityCriteriaClosed (C : ComplexStructure) (H : HolomorphicDynamics C) 
    (K : HyperbolicityCriteria C H) : Prop :=
  K.expandingCondition ∧ K.uniformExpansion ∧ K.invariantCones ∧ K.markovPartition

theorem hyperbolicity_criteria_closed_from_evidence (C : ComplexStructure) (H : HolomorphicDynamics C) 
    (K : HyperbolicityCriteria C H) (E : HyperbolicityCriteriaEvidence C H K) :
    HyperbolicityCriteriaClosed C H K := by
  exact And.intro E.expandingConditionClosed (And.intro E.uniformExpansionClosed
    (And.intro E.invariantConesClosed E.markovPartitionClosed))

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse
