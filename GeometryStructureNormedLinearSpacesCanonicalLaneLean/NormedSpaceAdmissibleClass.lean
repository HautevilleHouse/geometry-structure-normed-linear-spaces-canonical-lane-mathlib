import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure NormedLinearSpaceObject where
  carrier : Type
  norm : carrier → ℝ
  vectorSpace : Module ℝ carrier
  normProperties : Prop

structure AdmissibleNormedSpaceClass where
  object : NormedLinearSpaceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleNormedSpaceClass) : Prop :=
  NormedWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse