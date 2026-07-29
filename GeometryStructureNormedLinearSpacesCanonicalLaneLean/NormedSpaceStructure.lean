import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure NormedSpacePackage where
  carrier : Type u
  norm : carrier → ℝ
  norm_pos_iff : ∀ x, norm x = 0 ↔ x = 0
  norm_smul : ∀ (a : ℝ) (x : carrier), norm (a • x) = |a| * norm x
  norm_triangle : ∀ x y : carrier, norm (x + y) ≤ norm x + norm y
  completeness : Prop
  completenessProof : completeness

structure NormedSpaceEvidence (N : NormedSpacePackage) where
  norm_pos_iff_closed : N.norm_pos_iff
  norm_smul_closed : N.norm_smul
  norm_triangle_closed : N.norm_triangle
  completeness_closed : N.completeness

def NormedSpaceClosed (N : NormedSpacePackage) : Prop :=
  (∀ x, N.norm x = 0 ↔ x = 0) ∧
  (∀ (a : ℝ) (x : N.carrier), N.norm (a • x) = |a| * N.norm x) ∧
  (∀ x y : N.carrier, N.norm (x + y) ≤ N.norm x + N.norm y) ∧
  N.completeness

theorem normed_space_closed_from_evidence (N : NormedSpacePackage) (E : NormedSpaceEvidence N) :
    NormedSpaceClosed N := by
  exact And.intro E.norm_pos_iff_closed (And.intro E.norm_smul_closed (And.intro E.norm_triangle_closed E.completeness_closed))

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse