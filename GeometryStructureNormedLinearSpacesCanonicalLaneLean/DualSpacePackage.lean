import GeometryStructureNormedLinearSpacesCanonicalLaneLean.NormedSpaceDefinition

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure DualSpacePackage (V : NormedLinearSpace) where
  dualCarrier : Type u
  dualNorm : dualCarrier → ℝ
  dualAdd : dualCarrier → dualCarrier → dualCarrier
  dualSmul : ℝ → dualCarrier → dualCarrier
  dualNormed : NormedLinearSpace
  isDual : Prop
  evaluationMap : V.carrier → dualCarrier → ℝ
  evalBilinear : Prop
  evalIsometric : Prop

structure DualSpaceEvidence {V : NormedLinearSpace} (D : DualSpacePackage V) where
  isDualClosed : D.isDual
  evalBilinearClosed : D.evalBilinear
  evalIsometricClosed : D.evalIsometric

def DualSpaceClosed {V : NormedLinearSpace} (D : DualSpacePackage V) : Prop :=
  D.isDual ∧ D.evalBilinear ∧ D.evalIsometric

theorem dual_space_closed_from_evidence
    {V : NormedLinearSpace} (D : DualSpacePackage V) (E : DualSpaceEvidence D) :
    DualSpaceClosed D := by
  exact And.intro E.isDualClosed (And.intro E.evalBilinearClosed E.evalIsometricClosed)

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse