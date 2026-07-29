import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure BanachSpacePackage (α : Type u) [NormedAddCommGroup α] [NormedSpace ℝ α] where
  completeAxiom : Prop
  normedSpaceAxiom : Prop
  completeAxiomClosed : completeAxiom
  normedSpaceAxiomClosed : normedSpaceAxiom

structure BanachSpaceEvidence (α : Type u) [NormedAddCommGroup α] [NormedSpace ℝ α]
    (P : BanachSpacePackage α) where
  completeAxiomClosed : P.completeAxiom
  normedSpaceAxiomClosed : P.normedSpaceAxiom

def BanachSpaceClosed (α : Type u) [NormedAddCommGroup α] [NormedSpace ℝ α]
    (P : BanachSpacePackage α) : Prop :=
  P.completeAxiom ∧ P.normedSpaceAxiom

theorem banach_space_closed_from_evidence (α : Type u) [NormedAddCommGroup α] [NormedSpace ℝ α]
    (P : BanachSpacePackage α) (E : BanachSpaceEvidence α P) :
    BanachSpaceClosed α P := by
  exact And.intro E.completeAxiomClosed E.normedSpaceAxiomClosed

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse