import canonicalLaneMathlib.AdmissibleClass
import GeometryStructureNormedLinearSpacesCanonicalLaneLean.NormedSpaceStructure

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure BoundedLinearOperator (X Y : NormedSpacePackage) where
  f : X.carrier → Y.carrier
  linear : ∀ (a : ℝ) (x y : X.carrier), f (a • x + y) = a • f x + f y
  bounded : ∃ C : ℝ, ∀ x : X.carrier, Y.norm (f x) ≤ C * X.norm x

structure OperatorNorm (X Y : NormedSpacePackage) (T : BoundedLinearOperator X Y) where
  opNorm : ℝ
  opNorm_bound : opNorm = min { C : ℝ | ∀ x : X.carrier, Y.norm (T.f x) ≤ C * X.norm x }
  opNorm_nonneg : opNorm ≥ 0

def BoundedLinearOperatorClosed (X Y : NormedSpacePackage) (T : BoundedLinearOperator X Y) : Prop :=
  T.linear ∧ T.bounded

theorem bounded_linear_operator_closed (X Y : NormedSpacePackage) (T : BoundedLinearOperator X Y) :
    BoundedLinearOperatorClosed X Y T := by
  exact And.intro T.linear T.bounded

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse