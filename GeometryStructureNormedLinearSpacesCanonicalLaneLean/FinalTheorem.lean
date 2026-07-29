import canonicalLaneMathlib.AdmissibleClass
import GeometryStructureNormedLinearSpacesCanonicalLaneLean.BanachAdmissibleClosure

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

def ConstrainedNormedSpaceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_normed_space_endgame (A : AdmissibleClass) :
    ConstrainedNormedSpaceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse