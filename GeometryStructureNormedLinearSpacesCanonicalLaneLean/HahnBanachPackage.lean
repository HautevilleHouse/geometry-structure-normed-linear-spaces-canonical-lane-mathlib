import GeometryStructureNormedLinearSpacesCanonicalLaneLean.NormedSpaceDefinition

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure HahnBanachExtensionPackage (V : NormedLinearSpace) where
  subspace : V.carrier → Prop
  linearFunctional : (V.carrier → ℝ) → Prop
  dominatedBy : Prop
  extensionExists : Prop

structure HahnBanachEvidence {V : NormedLinearSpace} (H : HahnBanachExtensionPackage V) where
  dominatedClosed : H.dominatedBy
  extensionClosed : H.extensionExists

def HahnBanachClosed {V : NormedLinearSpace} (H : HahnBanachExtensionPackage V) : Prop :=
  H.dominatedBy ∧ H.extensionExists

theorem hahn_banach_closed_from_evidence
    {V : NormedLinearSpace} (H : HahnBanachExtensionPackage V) (E : HahnBanachEvidence H) :
    HahnBanachClosed H := by
  exact And.intro E.dominatedClosed E.extensionClosed

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse