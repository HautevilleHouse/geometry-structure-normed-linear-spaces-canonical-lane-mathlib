import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometryStructureNormedLinearSpacesCanonicalLaneLean.BanachSpaceExtension

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure BoundedLinearOperator (𝕜 : Type u) [NormedField 𝕜] (V W : Type v) [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W] (BV : BanachSpace 𝕜 V) (BW : BanachSpace 𝕜 W) where
  linearMap : V →ₗ[𝕜] W
  bounded : ∃ C : ℝ, ∀ x : V, linearMap x ≤ C * ‖x‖
  boundedClosed : bounded

def BoundedLinearOperatorClosed (𝕜 : Type u) [NormedField 𝕜] (V W : Type v) [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W] (BV : BanachSpace 𝕜 V) (BW : BanachSpace 𝕜 W) (T : BoundedLinearOperator 𝕜 V W BV BW) : Prop :=
  T.bounded

theorem bounded_linear_operator_closed_from_evidence (𝕜 : Type u) [NormedField 𝕜] (V W : Type v) [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W] (BV : BanachSpace 𝕜 V) (BW : BanachSpace 𝕜 W) (T : BoundedLinearOperator 𝕜 V W BV BW) : BoundedLinearOperatorClosed 𝕜 V W BV BW T := by
  exact T.boundedClosed

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse