import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure ConductivityModelPackage where
  conductivity : ℝ
  chargeCarrierMobility : ℝ
  chargeCarrierDensity : ℝ
  bandGap : ℝ
  fermiLevel : ℝ

def ConductivityModelClosed (C : ConductivityModelPackage) : Prop :=
  C.conductivity > 0 ∧ C.chargeCarrierMobility > 0 ∧ C.chargeCarrierDensity > 0 ∧
  C.bandGap > 0 ∧ C.fermiLevel > 0

theorem conductivityModelClosedFromEvidence (C : ConductivityModelPackage)
    (hCond : C.conductivity > 0) (hMob : C.chargeCarrierMobility > 0)
    (hDens : C.chargeCarrierDensity > 0) (hGap : C.bandGap > 0)
    (hFermi : C.fermiLevel > 0) : ConductivityModelClosed C := by
  exact And.intro hCond (And.intro hMob (And.intro hDens (And.intro hGap hFermi)))

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse