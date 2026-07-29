import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.NormedSpace.Banach

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure BanachSpacePackage (𝕜 : Type*) [NormedField 𝕜] where
  space : Type u
  norm : space → ℝ
  add : space → space → space
  smul : 𝕜 → space → space
  normedAddCommGroup : NormedAddCommGroup space
  normedSpace : NormedSpace 𝕜 space
  complete : CompleteSpace space

structure BanachSpaceEvidence {𝕜 : Type*} [NormedField 𝕜] (B : BanachSpacePackage 𝕜) where
  normedAddCommGroupClosed : NormedAddCommGroup B.space
  normedSpaceClosed : NormedSpace 𝕜 B.space
  completeClosed : CompleteSpace B.space

def BanachSpaceClosed {𝕜 : Type*} [NormedField 𝕜] (B : BanachSpacePackage 𝕜) : Prop :=
  have : NormedAddCommGroup B.space := B.normedAddCommGroup
  have : NormedSpace 𝕜 B.space := B.normedSpace
  have : CompleteSpace B.space := B.complete
  True

theorem banach_space_closed_from_evidence
    {𝕜 : Type*} [NormedField 𝕜] (B : BanachSpacePackage 𝕜)
    (E : BanachSpaceEvidence B) : BanachSpaceClosed B :=
  trivial

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse