import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure ChargeTransportModel where
  hoppingRate : ℝ
  tunnelingProbability : ℝ
  trapDensity : ℝ
  mobilityEdge : ℝ
  transportActivationEnergy : ℝ

def ChargeTransportClosed (T : ChargeTransportModel) : Prop :=
  T.hoppingRate > 0 ∧ T.trapDensity < 1

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse