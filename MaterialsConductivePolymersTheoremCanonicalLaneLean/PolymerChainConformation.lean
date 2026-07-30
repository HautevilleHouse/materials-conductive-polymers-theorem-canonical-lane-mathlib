import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure PolymerChainConformation where
  persistenceLength : ℝ
  monomerRadius : ℝ
  backboneAngle : ℝ
  dihedralAngle : ℝ
  conformationClosed : Prop

def PolymerChainConformationClosed (C : PolymerChainConformation) : Prop :=
  C.persistenceLength > 0 ∧ C.monomerRadius > 0 ∧ C.backboneAngle ≠ 0 ∧ C.dihedralAngle ≠ 0

theorem polymer_chain_conformation_closed (C : PolymerChainConformation) (h : C.conformationClosed) :
    PolymerChainConformationClosed C := by
  exact h

end HautevilleHouse.MaterialsConductivePolymersTheoremCanonicalLaneLean