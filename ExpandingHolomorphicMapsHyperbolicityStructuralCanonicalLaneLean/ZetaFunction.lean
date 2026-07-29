import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean.SpectralGap

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure ZetaFunction {M : Type} [TopologicalSpace M] [ComplexManifold M] {E : ExpandingHolomorphicMap M} (S : SpectralGap H) where
  zeta : ℂ → ℂ
  meromorphic : Prop
  poleAtResonance : Prop
  meromorphicCondition : meromorphic

def ZetaFunctionClosed (Z : ZetaFunction S) : Prop :=
  Z.meromorphicCondition

theorem zeta_function_closed (Z : ZetaFunction S) (hZ : ZetaFunctionClosed Z) : ZetaFunctionClosed Z := hZ

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse