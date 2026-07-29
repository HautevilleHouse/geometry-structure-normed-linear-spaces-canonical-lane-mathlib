import GeometryStructureNormedLinearSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NormedLinearSpaceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse