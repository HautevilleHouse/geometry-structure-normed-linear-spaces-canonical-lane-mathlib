import GeometryStructureNormedLinearSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure BanachSpaceObject (O : NormedLinearSpaceObject) where
  completeness : Prop
  completenessProof : completeness

structure BanachClosurePackage (O : NormedLinearSpaceObject) (B : BanachSpaceObject O) where
  completenessClosed : B.completeness

def BanachClosed (O : NormedLinearSpaceObject) (B : BanachSpaceObject O) : Prop :=
  B.completeness

theorem banach_closed_from_package (O : NormedLinearSpaceObject) (B : BanachSpaceObject O) :
    BanachClosed O B := by
  exact B.completenessProof

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse