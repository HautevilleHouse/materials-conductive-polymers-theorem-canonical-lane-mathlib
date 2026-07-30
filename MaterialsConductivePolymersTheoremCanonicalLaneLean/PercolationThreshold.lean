import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsConductivePolymersTheoremCanonicalLaneLean.ConductivePolymerStructure

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure PercolationThresholdPackage where
  fillerFraction : Prop
  conductorInsulatorRatio : Prop
  tunnelingDistance : Prop
  criticalExponent : Prop

structure PercolationThresholdEvidence (P : PercolationThresholdPackage) where
  fillerFractionClosed : P.fillerFraction
  conductorInsulatorRatioClosed : P.conductorInsulatorRatio
  tunnelingDistanceClosed : P.tunnelingDistance
  criticalExponentClosed : P.criticalExponent

def PercolationThresholdClosed (P : PercolationThresholdPackage) : Prop :=
  P.fillerFraction ∧ P.conductorInsulatorRatio ∧ P.tunnelingDistance ∧ P.criticalExponent

theorem percolation_threshold_closed_from_evidence
    (P : PercolationThresholdPackage) (E : PercolationThresholdEvidence P) :
    PercolationThresholdClosed P := by
  exact And.intro E.fillerFractionClosed
    (And.intro E.conductorInsulatorRatioClosed
      (And.intro E.tunnelingDistanceClosed E.criticalExponentClosed))

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse
