import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryStructureNormedLinearSpacesCanonicalLaneLean

structure NormedLinearSpace where
  carrier : Type u
  norm : carrier → ℝ
  zero : carrier
  add : carrier → carrier → carrier
  smul : ℝ → carrier → carrier
  norm_nonneg : ∀ x, 0 ≤ norm x
  norm_eq_zero_iff : ∀ x, norm x = 0 ↔ x = zero
  norm_triangle : ∀ x y, norm (add x y) ≤ norm x + norm y
  norm_smul : ∀ r x, norm (smul r x) = |r| * norm x

structure NormedLinearSpaceAdmissibleObject where
  space : NormedLinearSpace
  isBanach : Prop
  isReflexive : Prop
  conclusion : isBanach ∧ isReflexive

def NormedLinearSpaceWitnessClosed (O : NormedLinearSpaceAdmissibleObject) : Prop :=
  O.conclusion

end GeometryStructureNormedLinearSpacesCanonicalLaneLean
end HautevilleHouse