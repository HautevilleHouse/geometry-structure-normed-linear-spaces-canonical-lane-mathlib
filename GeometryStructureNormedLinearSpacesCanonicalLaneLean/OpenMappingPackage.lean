import GeometryStructureNormedLinearSpacesCanonicalLaneLean.NormedSpaceDefinition

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure OpenMappingPackage (V W : NormedLinearSpace) where
  linearMap : V.carrier → W.carrier
  continuous : Prop
  surjective : Prop
  openImage : Prop

structure OpenMappingEvidence {V W : NormedLinearSpace} (O : OpenMappingPackage V W) where
  continuousClosed : O.continuous
  surjectiveClosed : O.surjective
  openImageClosed : O.openImage

def OpenMappingClosed {V W : NormedLinearSpace} (O : OpenMappingPackage V W) : Prop :=
  O.continuous ∧ O.surjective ∧ O.openImage

theorem open_mapping_closed_from_evidence
    {V W : NormedLinearSpace} (O : OpenMappingPackage V W) (E : OpenMappingEvidence O) :
    OpenMappingClosed O := by
  exact And.intro E.continuousClosed (And.intro E.surjectiveClosed E.openImageClosed)

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse