import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure FractureToughnessPackage where
  criticalStressIntensity : ℝ
  crackLength : ℝ
  toughness : ℝ

def FractureToughnessClosed (F : FractureToughnessPackage) : Prop :=
  F.criticalStressIntensity > 0 ∧ F.crackLength > 0 ∧ F.toughness > 0

theorem fractureToughnessClosedFromEvidence (F : FractureToughnessPackage)
    (hStress : F.criticalStressIntensity > 0) (hCrack : F.crackLength > 0)
    (hToughness : F.toughness > 0) : FractureToughnessClosed F := by
  exact And.intro hStress (And.intro hCrack hToughness)

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse