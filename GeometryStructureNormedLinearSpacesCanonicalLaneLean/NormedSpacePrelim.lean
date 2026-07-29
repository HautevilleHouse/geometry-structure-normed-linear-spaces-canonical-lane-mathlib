import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure NormedVectorSpacePackage (α : Type u) [NormedAddCommGroup α] [NormedSpace ℝ α] where
  normAxiom : Prop
  vectorSpaceAxiom : Prop
  normAxiomClosed : normAxiom
  vectorSpaceAxiomClosed : vectorSpaceAxiom

structure NormedVectorSpaceEvidence (α : Type u) [NormedAddCommGroup α] [NormedSpace ℝ α]
    (P : NormedVectorSpacePackage α) where
  normAxiomClosed : P.normAxiom
  vectorSpaceAxiomClosed : P.vectorSpaceAxiom

def NormedVectorSpaceClosed (α : Type u) [NormedAddCommGroup α] [NormedSpace ℝ α]
    (P : NormedVectorSpacePackage α) : Prop :=
  P.normAxiom ∧ P.vectorSpaceAxiom

theorem normed_vector_space_closed_from_evidence (α : Type u) [NormedAddCommGroup α] [NormedSpace ℝ α]
    (P : NormedVectorSpacePackage α) (E : NormedVectorSpaceEvidence α P) :
    NormedVectorSpaceClosed α P := by
  exact And.intro E.normAxiomClosed E.vectorSpaceAxiomClosed

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse