import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure EffectiveMediumPackage where
  hostConductivity : ℝ
  fillerConductivity : ℝ
  fillerVolumeFraction : ℝ
  shapeFactor : ℝ
  effectiveConductivityFormula : ℝ
  bruggemanSymmetry : Prop
  maxwellGarnettLimit : Prop

structure EffectiveMediumEvidence (E : EffectiveMediumPackage) where
  bruggemanSymmetryClosed : E.bruggemanSymmetry
  maxwellGarnettLimitClosed : E.maxwellGarnettLimit

def EffectiveMediumClosed (E : EffectiveMediumPackage) : Prop :=
  E.bruggemanSymmetry ∧ E.maxwellGarnettLimit

theorem effective_medium_closed_from_evidence (E : EffectiveMediumPackage)
    (Ev : EffectiveMediumEvidence E) : EffectiveMediumClosed E := by
  exact And.intro Ev.bruggemanSymmetryClosed Ev.maxwellGarnettLimitClosed

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse