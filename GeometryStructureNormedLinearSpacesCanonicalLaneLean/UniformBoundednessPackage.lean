import GeometryStructureNormedLinearSpacesCanonicalLaneLean.NormedSpaceDefinition

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure UniformBoundednessPackage (V W : NormedLinearSpace) where
  family : Set (V.carrier → W.carrier)
  pointwiseBounded : Prop
  operatorNorm : (V.carrier → W.carrier) → ℝ
  uniformBounded : Prop

structure UniformBoundednessEvidence {V W : NormedLinearSpace} (U : UniformBoundednessPackage V W) where
  pointwiseBoundedClosed : U.pointwiseBounded
  uniformBoundedClosed : U.uniformBounded

def UniformBoundednessClosed {V W : NormedLinearSpace} (U : UniformBoundednessPackage V W) : Prop :=
  U.pointwiseBounded ∧ U.uniformBounded

theorem uniform_boundedness_closed_from_evidence
    {V W : NormedLinearSpace} (U : UniformBoundednessPackage V W) (E : UniformBoundednessEvidence U) :
    UniformBoundednessClosed U := by
  exact And.intro E.pointwiseBoundedClosed E.uniformBoundedClosed

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse