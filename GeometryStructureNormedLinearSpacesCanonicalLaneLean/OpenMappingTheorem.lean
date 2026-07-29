import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometryStructureNormedLinearSpacesCanonicalLaneLean.BanachSpaceExtension

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure OpenMappingData (𝕜 : Type u) [NormedField 𝕜] (V W : Type v) [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W] (BV : BanachSpace 𝕜 V) (BW : BanachSpace 𝕜 W) where
  operator : BoundedLinearOperator 𝕜 V W BV BW
  surjective : ∀ y : W, ∃ x : V, operator.linearMap x = y
  openImage : IsOpenMap (operator.linearMap : V → W)
  openMappingClosed : Prop

structure OpenMappingEvidence (𝕜 : Type u) [NormedField 𝕜] (V W : Type v) [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W] (BV : BanachSpace 𝕜 V) (BW : BanachSpace 𝕜 W) (O : OpenMappingData 𝕜 V W BV BW) where
  openMappingClosedClosed : O.openMappingClosed

def OpenMappingClosed (𝕜 : Type u) [NormedField 𝕜] (V W : Type v) [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W] (BV : BanachSpace 𝕜 V) (BW : BanachSpace 𝕜 W) (O : OpenMappingData 𝕜 V W BV BW) : Prop :=
  O.openMappingClosed

theorem open_mapping_closed_from_evidence (𝕜 : Type u) [NormedField 𝕜] (V W : Type v) [AddCommGroup V] [Module 𝕜 V] [AddCommGroup W] [Module 𝕜 W] (BV : BanachSpace 𝕜 V) (BW : BanachSpace 𝕜 W) (O : OpenMappingData 𝕜 V W BV BW) (E : OpenMappingEvidence 𝕜 V W BV BW O) : OpenMappingClosed 𝕜 V W BV BW O := by
  exact E.openMappingClosedClosed

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse