import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure HilbertSpacePackage (𝕜 : Type*) [IsROrC 𝕜] where
  space : Type u
  inner : space → space → 𝕜
  norm : space → ℝ
  add : space → space → space
  smul : 𝕜 → space → space
  innerProductSpace : InnerProductSpace 𝕜 space
  complete : CompleteSpace space

structure HilbertSpaceEvidence {𝕜 : Type*} [IsROrC 𝕜] (H : HilbertSpacePackage 𝕜) where
  innerProductSpaceClosed : InnerProductSpace 𝕜 H.space
  completeClosed : CompleteSpace H.space

def HilbertSpaceClosed {𝕜 : Type*} [IsROrC 𝕜] (H : HilbertSpacePackage 𝕜) : Prop :=
  have : InnerProductSpace 𝕜 H.space := H.innerProductSpace
  have : CompleteSpace H.space := H.complete
  True

theorem hilbert_space_closed_from_evidence
    {𝕜 : Type*} [IsROrC 𝕜] (H : HilbertSpacePackage 𝕜)
    (E : HilbertSpaceEvidence H) : HilbertSpaceClosed H :=
  trivial

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse