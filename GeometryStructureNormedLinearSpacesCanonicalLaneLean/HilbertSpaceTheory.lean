import GeometryStructureNormedLinearSpacesCanonicalLaneLean.BanachSpaceTheory

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure InnerProductObject where
  carrier : Type
  inner : carrier → carrier → ℝ
  innerProperties : Prop

structure HilbertSpaceObject (O : NormedLinearSpaceObject) (I : InnerProductObject) where
  compatibleNorm : Prop
  completeInner : Prop
  compatibleNormProof : compatibleNorm
  completeInnerProof : completeInner

def HilbertClosed (O : NormedLinearSpaceObject) (I : InnerProductObject) (H : HilbertSpaceObject O I) : Prop :=
  H.compatibleNorm ∧ H.completeInner

theorem hilbert_closed_from_object (O : NormedLinearSpaceObject) (I : InnerProductObject) (H : HilbertSpaceObject O I) :
    HilbertClosed O I H := by
  exact And.intro H.compatibleNormProof H.completeInnerProof

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse