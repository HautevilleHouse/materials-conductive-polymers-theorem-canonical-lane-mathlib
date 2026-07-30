import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure ConductivityMeasurement where
  conductivity : ℝ
  measurementTemperature : ℝ
  appliedField : ℝ
  ohmicBehavior : Prop
  measurementMethod : String

def MeasurementClosed (M : ConductivityMeasurement) : Prop :=
  M.conductivity > 0 ∧ M.ohmicBehavior

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse