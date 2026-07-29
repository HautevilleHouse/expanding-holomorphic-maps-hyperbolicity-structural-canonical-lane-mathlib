import canonicalLaneMathlib.AdmissibleClass
import ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean.ExpandingMap

namespace HautevilleHouse
namespace ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean

structure HyperbolicityPackage (X : RiemannSurface) (f : ExpandingMap X) where
  uniformExpansion : Prop
  contractionOfTangent : Prop
  periodicPointsDense : Prop
  topologicalEntropyPositive : Prop

structure HyperbolicityEvidence (X : RiemannSurface) (f : ExpandingMap X)
    (H : HyperbolicityPackage X f) where
  uniformExpansionClosed : H.uniformExpansion
  contractionOfTangentClosed : H.contractionOfTangent
  periodicPointsDenseClosed : H.periodicPointsDense
  topologicalEntropyPositiveClosed : H.topologicalEntropyPositive

def HyperbolicityClosed (X : RiemannSurface) (f : ExpandingMap X)
    (H : HyperbolicityPackage X f) : Prop :=
  H.uniformExpansion ∧ H.contractionOfTangent ∧
  H.periodicPointsDense ∧ H.topologicalEntropyPositive

theorem hyperbolicity_closed_from_evidence (X : RiemannSurface) (f : ExpandingMap X)
    (H : HyperbolicityPackage X f) (E : HyperbolicityEvidence X f H) :
    HyperbolicityClosed X f H := by
  exact And.intro E.uniformExpansionClosed
    (And.intro E.contractionOfTangentClosed
      (And.intro E.periodicPointsDenseClosed E.topologicalEntropyPositiveClosed))

end ExpandingHolomorphicMapsHyperbolicityStructuralCanonicalLaneLean
end HautevilleHouse