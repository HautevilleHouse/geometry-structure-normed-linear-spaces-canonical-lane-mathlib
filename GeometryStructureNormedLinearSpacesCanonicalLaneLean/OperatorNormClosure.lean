import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure BoundedLinearOperatorPackage (α β : Type u) [NormedAddCommGroup α] [NormedAddCommGroup β]
    [NormedSpace ℝ α] [NormedSpace ℝ β] where
  linearity : Prop
  boundedAxiom : Prop
  linearityClosed : linearity
  boundedAxiomClosed : boundedAxiom

structure BoundedLinearOperatorEvidence (α β : Type u) [NormedAddCommGroup α] [NormedAddCommGroup β]
    [NormedSpace ℝ α] [NormedSpace ℝ β] (P : BoundedLinearOperatorPackage α β) where
  linearityClosed : P.linearity
  boundedAxiomClosed : P.boundedAxiom

def BoundedLinearOperatorClosed (α β : Type u) [NormedAddCommGroup α] [NormedAddCommGroup β]
    [NormedSpace ℝ α] [NormedSpace ℝ β] (P : BoundedLinearOperatorPackage α β) : Prop :=
  P.linearity ∧ P.boundedAxiom

theorem bounded_linear_operator_closed_from_evidence (α β : Type u) [NormedAddCommGroup α] [NormedAddCommGroup β]
    [NormedSpace ℝ α] [NormedSpace ℝ β] (P : BoundedLinearOperatorPackage α β)
    (E : BoundedLinearOperatorEvidence α β P) : BoundedLinearOperatorClosed α β P := by
  exact And.intro E.linearityClosed E.boundedAxiomClosed

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse