import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure DopingMechanism where
  dopantType : String
  dopantConcentration : ℝ
  chargeTransferEfficiency : ℝ
  dopingAccessibility : Prop
  carrierGenerationRate : ℝ

def DopingClosed (D : DopingMechanism) : Prop :=
  D.dopantConcentration > 0 ∧ D.chargeTransferEfficiency > 0

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse