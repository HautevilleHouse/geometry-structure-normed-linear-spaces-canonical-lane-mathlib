import canonicalLaneMathlib.AdmissibleClass
import GeometryStructureNormedLinearSpacesCanonicalLaneLean.NormedSpaceDefinition

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure AdmissibleClass where
  object : NormedLinearSpaceAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NormedLinearSpaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse