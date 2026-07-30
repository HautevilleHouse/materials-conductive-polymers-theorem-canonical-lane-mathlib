import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : ℝ × ℝ
  compositionRange : ℝ × ℝ
  phaseBoundaries : List ((ℝ × ℝ) → Prop)
  criticalPoint : ℝ × ℝ

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  let (tLow, tHigh) := P.temperatureRange
  let (cLow, cHigh) := P.compositionRange
  tLow < tHigh ∧ cLow < cHigh ∧ P.criticalPoint.1 ∈ Ioo tLow tHigh ∧ P.criticalPoint.2 ∈ Ioo cLow cHigh

theorem phaseDiagramClosedFromEvidence (P : PhaseDiagramPackage)
    (hT : P.temperatureRange.1 < P.temperatureRange.2)
    (hC : P.compositionRange.1 < P.compositionRange.2)
    (hCrit1 : P.criticalPoint.1 ∈ Ioo P.temperatureRange.1 P.temperatureRange.2)
    (hCrit2 : P.criticalPoint.2 ∈ Ioo P.compositionRange.1 P.compositionRange.2) : PhaseDiagramClosed P := by
  exact And.intro hT (And.intro hC (And.intro hCrit1 hCrit2))

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse