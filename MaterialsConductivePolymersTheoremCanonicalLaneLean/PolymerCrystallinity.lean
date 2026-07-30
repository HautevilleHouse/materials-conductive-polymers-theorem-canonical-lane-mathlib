import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure PolymerCrystallinityPackage where
  lamellarThickness : ℝ
  crystallineFraction : ℝ
  spheruliteRadius : ℝ
  degreeOfCrystallinity : ℝ
  meltingTemperature : ℝ

structure PolymerCrystallinityEvidence (P : PolymerCrystallinityPackage) where
  lamellarThicknessPositive : P.lamellarThickness > 0
  crystallineFractionInUnitInterval : 0 < P.crystallineFraction ∧ P.crystallineFraction < 1
  spheruliteRadiusPositive : P.spheruliteRadius > 0
  degreeOfCrystallinityPositive : P.degreeOfCrystallinity > 0
  meltingTemperaturePositive : P.meltingTemperature > 0

def PolymerCrystallinityClosed (P : PolymerCrystallinityPackage) : Prop :=
  P.lamellarThickness > 0 ∧ 0 < P.crystallineFraction ∧ P.crystallineFraction < 1 ∧
  P.spheruliteRadius > 0 ∧ P.degreeOfCrystallinity > 0 ∧ P.meltingTemperature > 0

theorem polymerCrystallinityClosedFromEvidence (P : PolymerCrystallinityPackage)
    (E : PolymerCrystallinityEvidence P) : PolymerCrystallinityClosed P := by
  exact And.intro E.lamellarThicknessPositive
    (And.intro E.crystallineFractionInUnitInterval.1
      (And.intro E.crystallineFractionInUnitInterval.2
        (And.intro E.spheruliteRadiusPositive
          (And.intro E.degreeOfCrystallinityPositive E.meltingTemperaturePositive))))

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse