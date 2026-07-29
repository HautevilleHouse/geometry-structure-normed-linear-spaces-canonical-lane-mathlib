import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.NormedSpace.Dual

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure DualSpacePackage (𝕜 : Type*) [NormedField 𝕜] (V : NormedVectorSpacePackage 𝕜) where
  dual : Type u
  norm : dual → ℝ
  add : dual → dual → dual
  smul : 𝕜 → dual → dual
  normedAddCommGroup : NormedAddCommGroup dual
  normedSpace : NormedSpace 𝕜 dual
  pairing : V.space → dual → 𝕜
  pairingBilinear : BilinearMap 𝕜 V.space dual 𝕜
  pairingSeparating : ∀ x : V.space, x ≠ 0 → ∃ f : dual, pairing x f ≠ 0

structure DualSpaceEvidence {𝕜 : Type*} [NormedField 𝕜] {V : NormedVectorSpacePackage 𝕜}
    (D : DualSpacePackage 𝕜 V) where
  normedAddCommGroupClosed : NormedAddCommGroup D.dual
  normedSpaceClosed : NormedSpace 𝕜 D.dual
  pairingBilinearClosed : BilinearMap 𝕜 V.space D.dual 𝕜
  pairingSeparatingClosed : ∀ x : V.space, x ≠ 0 → ∃ f : D.dual, D.pairing x f ≠ 0

def DualSpaceClosed {𝕜 : Type*} [NormedField 𝕜] {V : NormedVectorSpacePackage 𝕜}
    (D : DualSpacePackage 𝕜 V) : Prop :=
  have : NormedAddCommGroup D.dual := D.normedAddCommGroup
  have : NormedSpace 𝕜 D.dual := D.normedSpace
  BilinearMap 𝕜 V.space D.dual 𝕜 ∧ (∀ x : V.space, x ≠ 0 → ∃ f : D.dual, D.pairing x f ≠ 0)

theorem dual_space_closed_from_evidence
    {𝕜 : Type*} [NormedField 𝕜] {V : NormedVectorSpacePackage 𝕜}
    (D : DualSpacePackage 𝕜 V) (E : DualSpaceEvidence D) : DualSpaceClosed D :=
  And.intro E.pairingBilinearClosed E.pairingSeparatingClosed

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse