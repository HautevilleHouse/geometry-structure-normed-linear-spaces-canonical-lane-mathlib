import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure DualSpacePackage (α : Type u) [NormedAddCommGroup α] [NormedSpace ℝ α] where
  dualDefined : Prop
  dualNormAxiom : Prop
  dualDefinedClosed : dualDefined
  dualNormAxiomClosed : dualNormAxiom

structure DualSpaceEvidence (α : Type u) [NormedAddCommGroup α] [NormedSpace ℝ α]
    (P : DualSpacePackage α) where
  dualDefinedClosed : P.dualDefined
  dualNormAxiomClosed : P.dualNormAxiom

def DualSpaceClosed (α : Type u) [NormedAddCommGroup α] [NormedSpace ℝ α]
    (P : DualSpacePackage α) : Prop :=
  P.dualDefined ∧ P.dualNormAxiom

theorem dual_space_closed_from_evidence (α : Type u) [NormedAddCommGroup α] [NormedSpace ℝ α]
    (P : DualSpacePackage α) (E : DualSpaceEvidence α P) : DualSpaceClosed α P := by
  exact And.intro E.dualDefinedClosed E.dualNormAxiomClosed

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse