import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometryStructureNormedLinearSpacesCanonicalLaneLean.BanachSpaceExtension

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure ClosedGraphData (𝕜 : Type u) [NormedField 𝕜] (V W : Type v) [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W] (BV : BanachSpace 𝕜 V) (BW : BanachSpace 𝕜 W) where
  linearMap : V →ₗ[𝕜] W
  graphClosed : IsClosed (Set.range (fun x : V => (x, linearMap x)))
  boundedness : ∃ C : ℝ, ∀ x : V, ‖linearMap x‖ ≤ C * ‖x‖
  closedGraphClosed : Prop

structure ClosedGraphEvidence (𝕜 : Type u) [NormedField 𝕜] (V W : Type v) [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W] (BV : BanachSpace 𝕜 V) (BW : BanachSpace 𝕜 W) (C : ClosedGraphData 𝕜 V W BV BW) where
  closedGraphClosedClosed : C.closedGraphClosed

def ClosedGraphClosed (𝕜 : Type u) [NormedField 𝕜] (V W : Type v) [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W] (BV : BanachSpace 𝕜 V) (BW : BanachSpace 𝕜 W) (C : ClosedGraphData 𝕜 V W BV BW) : Prop :=
  C.closedGraphClosed

theorem closed_graph_closed_from_evidence (𝕜 : Type u) [NormedField 𝕜] (V W : Type v) [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W] (BV : BanachSpace 𝕜 V) (BW : BanachSpace 𝕜 W) (C : ClosedGraphData 𝕜 V W BV BW) (E : ClosedGraphEvidence 𝕜 V W BV BW C) : ClosedGraphClosed 𝕜 V W BV BW C := by
  exact E.closedGraphClosedClosed

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse