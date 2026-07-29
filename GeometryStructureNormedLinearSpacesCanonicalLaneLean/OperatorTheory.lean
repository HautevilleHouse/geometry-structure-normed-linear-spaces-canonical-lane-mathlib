import GeometryStructureNormedLinearSpacesCanonicalLaneLean.HilbertSpaceTheory

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure BoundedLinearOperator (X Y : NormedLinearSpaceObject) where
  map : X.carrier → Y.carrier
  linear : Prop
  bounded : Prop
  linearProof : linear
  boundedProof : bounded

def OperatorClosed (X Y : NormedLinearSpaceObject) (T : BoundedLinearOperator X Y) : Prop :=
  T.linear ∧ T.bounded

theorem operator_closed_from_operator (X Y : NormedLinearSpaceObject) (T : BoundedLinearOperator X Y) :
    OperatorClosed X Y T := by
  exact And.intro T.linearProof T.boundedProof

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse