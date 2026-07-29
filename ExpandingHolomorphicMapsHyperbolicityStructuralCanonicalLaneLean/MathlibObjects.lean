import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructural

structure ExpandingHolomorphicMapSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

structure ExpandingHolomorphicMapAdmittedObject where
  space : ExpandingHolomorphicMapSpace
  expanding : Prop
  holomorphic : Prop
  hyperbolicStructure : Prop
  conclusion : expanding ∧ holomorphic ∧ hyperbolicStructure

structure HyperbolicityEndgameState where
  object : ExpandingHolomorphicMapAdmittedObject

def ExpandingMapHyperbolicityWitnessClosed (O : ExpandingHolomorphicMapAdmittedObject) : Prop :=
  O.expanding ∧ O.holomorphic ∧ O.hyperbolicStructure

end ExpandingHolomorphicMapsHyperbolicityStructural
end HautevilleHouse
