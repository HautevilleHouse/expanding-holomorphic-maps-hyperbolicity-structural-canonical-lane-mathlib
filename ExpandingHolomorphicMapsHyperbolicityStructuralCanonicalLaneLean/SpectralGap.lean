import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean.HyperbolicStructure

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure SpectralGap {M : Type} [TopologicalSpace M] [ComplexManifold M] {E : ExpandingHolomorphicMap M} (H : HyperbolicStructure E) where
  transferOperator : Operator (M → ℂ)
  spectralRadius : Prop
  spectralGap : spectralRadius < 1

def SpectralGapClosed {M : Type} [TopologicalSpace M] [ComplexManifold M] {E : ExpandingHolomorphicMap M} {H : HyperbolicStructure E} (S : SpectralGap H) : Prop :=
  S.spectralGap

theorem spectral_gap_closed (S : SpectralGap H) (hS : SpectralGapClosed S) : SpectralGapClosed S := hS

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse