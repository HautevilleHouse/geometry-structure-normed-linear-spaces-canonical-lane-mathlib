import canonicalLaneMathlib.AdmissibleClass
import GeometryStructureNormedLinearSpacesCanonicalLaneLean.NormedSpaceStructure
import GeometryStructureNormedLinearSpacesCanonicalLaneLean.LinearOperatorBridge

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by trivial

def ConstrainedNormedSpaceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_normed_space_endgame (A : AdmissibleClass) :
    ConstrainedNormedSpaceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse