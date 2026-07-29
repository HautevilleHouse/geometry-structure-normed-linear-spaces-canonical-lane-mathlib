import GeometryStructureNormedLinearSpacesCanonicalLaneLean.OperatorTheory

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure DualSpaceObject (X : NormedLinearSpaceObject) where
  dual : Type
  dualNorm : dual → ℝ
  pairing : X.carrier → dual → ℝ
  dualNormProperties : Prop
  pairingProperties : Prop

def DualSpaceClosed (X : NormedLinearSpaceObject) (D : DualSpaceObject X) : Prop :=
  D.dualNormProperties ∧ D.pairingProperties

theorem dual_space_closed_from_object (X : NormedLinearSpaceObject) (D : DualSpaceObject X) :
    DualSpaceClosed X D := by
  exact And.intro D.dualNormProperties D.pairingProperties

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse