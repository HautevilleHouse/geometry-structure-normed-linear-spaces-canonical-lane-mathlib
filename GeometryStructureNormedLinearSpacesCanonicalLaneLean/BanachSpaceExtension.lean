import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometryStructureNormedLinearSpacesCanonicalLaneLean.NormedSpaceDefinition

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure BanachSpace (𝕜 : Type u) [NormedField 𝕜] (V : Type v) [AddCommGroup V] [Module 𝕜 V] extends NormedLinearSpace 𝕜 V where
  complete : Prop
  completeClosed : complete

def BanachSpaceClosed (𝕜 : Type u) [NormedField 𝕜] (V : Type v) [AddCommGroup V] [Module 𝕜 V] (B : BanachSpace 𝕜 V) : Prop :=
  NormedLinearSpaceClosed 𝕜 V B.toNormedLinearSpace ∧ B.complete

theorem banach_space_closed_from_evidence (𝕜 : Type u) [NormedField 𝕜] (V : Type v) [AddCommGroup V] [Module 𝕜 V] (B : BanachSpace 𝕜 V) : BanachSpaceClosed 𝕜 V B := by
  refine ⟨normed_linear_space_closed_from_evidence 𝕜 V B.toNormedLinearSpace, B.completeClosed⟩

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse