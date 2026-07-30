import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure ElasticityTensorPackage where
  youngModulus : ℝ
  poissonRatio : ℝ
  shearModulus : ℝ
  bulkModulus : ℝ

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  youngModulusPositive : E.youngModulus > 0
  poissonRatioRange : -1 < E.poissonRatio ∧ E.poissonRatio < 0.5
  shearModulusPositive : E.shearModulus > 0
  bulkModulusPositive : E.bulkModulus > 0

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.youngModulus > 0 ∧ -1 < E.poissonRatio ∧ E.poissonRatio < 0.5 ∧
  E.shearModulus > 0 ∧ E.bulkModulus > 0

theorem elasticityTensorClosedFromEvidence (E : ElasticityTensorPackage)
    (Ev : ElasticityTensorEvidence E) : ElasticityTensorClosed E := by
  exact And.intro Ev.youngModulusPositive
    (And.intro Ev.poissonRatioRange.1
      (And.intro Ev.poissonRatioRange.2
        (And.intro Ev.shearModulusPositive Ev.bulkModulusPositive)))

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse