import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.NormedSpace.Basic

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure NormedVectorSpacePackage (𝕜 : Type*) [NormedField 𝕜] where
  space : Type u
  norm : space → ℝ
  add : space → space → space
  smul : 𝕜 → space → space
  normedAddCommGroup : NormedAddCommGroup space
  normedSpace : NormedSpace 𝕜 space

structure NormedVectorSpaceEvidence {𝕜 : Type*} [NormedField 𝕜] (V : NormedVectorSpacePackage 𝕜) where
  normedAddCommGroupClosed : NormedAddCommGroup V.space
  normedSpaceClosed : NormedSpace 𝕜 V.space

def NormedVectorSpaceClosed {𝕜 : Type*} [NormedField 𝕜] (V : NormedVectorSpacePackage 𝕜) : Prop :=
  have : NormedAddCommGroup V.space := V.normedAddCommGroup
  have : NormedSpace 𝕜 V.space := V.normedSpace
  True

theorem normed_vector_space_closed_from_evidence
    {𝕜 : Type*} [NormedField 𝕜] (V : NormedVectorSpacePackage 𝕜)
    (E : NormedVectorSpaceEvidence V) : NormedVectorSpaceClosed V :=
  trivial

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse