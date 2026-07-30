import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsConductivePolymersTheoremCanonicalLaneLean.ConductivePolymerStructure

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure ConjugationLengthPackage where
  effectiveConjugationLength : Prop
  bandGapReduction : Prop
  chargeCarrierDelocalization : Prop
  opticalAbsorptionEdge : Prop

structure ConjugationLengthEvidence (C : ConjugationLengthPackage) where
  effectiveConjugationLengthClosed : C.effectiveConjugationLength
  bandGapReductionClosed : C.bandGapReduction
  chargeCarrierDelocalizationClosed : C.chargeCarrierDelocalization
  opticalAbsorptionEdgeClosed : C.opticalAbsorptionEdge

def ConjugationLengthClosed (C : ConjugationLengthPackage) : Prop :=
  C.effectiveConjugationLength ∧ C.bandGapReduction ∧ C.chargeCarrierDelocalization ∧ C.opticalAbsorptionEdge

theorem conjugation_length_closed_from_evidence
    (C : ConjugationLengthPackage) (E : ConjugationLengthEvidence C) :
    ConjugationLengthClosed C := by
  exact And.intro E.effectiveConjugationLengthClosed
    (And.intro E.bandGapReductionClosed
      (And.intro E.chargeCarrierDelocalizationClosed E.opticalAbsorptionEdgeClosed))

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse
