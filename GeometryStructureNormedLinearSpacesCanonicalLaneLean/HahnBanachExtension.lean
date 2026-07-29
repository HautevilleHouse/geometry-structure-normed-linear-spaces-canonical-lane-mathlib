import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometryStructureNormedLinearSpacesCanonicalLaneLean.BoundedLinearOperator

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure HahnBanachExtensionData (𝕜 : Type u) [NormedField 𝕜] (V : Type v) [AddCommGroup V] [Module 𝕜 V] (BV : BanachSpace 𝕜 V) where
  subspace : Submodule 𝕜 V
  functional : BoundedLinearOperator 𝕜 V 𝕜 BV (by
    -- 𝕜 as Banach space over itself
    let 𝕜Banach : BanachSpace 𝕜 𝕜 := {
      toNormedLinearSpace := {
        norm := λ x => ‖x‖
        norm_pos := by
          intro x hx
          exact norm_pos.mpr hx
        norm_smul := by
          intro a x
          simp
        norm_triangle := by
          intro x y
          exact norm_add_le x y
      }
      complete := by
        infer_instance
      completeClosed := by infer_instance
    }
    exact 𝕜Banach)
  extension : BoundedLinearOperator 𝕜 V 𝕜 BV (by
    let 𝕜Banach : BanachSpace 𝕜 𝕜 := {
      toNormedLinearSpace := {
        norm := λ x => ‖x‖
        norm_pos := by
          intro x hx
          exact norm_pos.mpr hx
        norm_smul := by
          intro a x
          simp
        norm_triangle := by
          intro x y
          exact norm_add_le x y
      }
      complete := by
        infer_instance
      completeClosed := by infer_instance
    }
    exact 𝕜Banach)
  extendsOnSubspace : ∀ x : subspace, extension.linearMap x = functional.linearMap x
  normPreserved : ‖extension.linearMap‖ = ‖functional.linearMap‖
  hahnBanachClosed : Prop

structure HahnBanachExtensionEvidence (𝕜 : Type u) [NormedField 𝕜] (V : Type v) [AddCommGroup V] [Module 𝕜 V] (BV : BanachSpace 𝕜 V) (H : HahnBanachExtensionData 𝕜 V BV) where
  hahnBanachClosedClosed : H.hahnBanachClosed

def HahnBanachExtensionClosed (𝕜 : Type u) [NormedField 𝕜] (V : Type v) [AddCommGroup V] [Module 𝕜 V] (BV : BanachSpace 𝕜 V) (H : HahnBanachExtensionData 𝕜 V BV) : Prop :=
  H.hahnBanachClosed

theorem hahn_banach_extension_closed_from_evidence (𝕜 : Type u) [NormedField 𝕜] (V : Type v) [AddCommGroup V] [Module 𝕜 V] (BV : BanachSpace 𝕜 V) (H : HahnBanachExtensionData 𝕜 V BV) (E : HahnBanachExtensionEvidence 𝕜 V BV H) : HahnBanachExtensionClosed 𝕜 V BV H := by
  exact E.hahnBanachClosedClosed

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse