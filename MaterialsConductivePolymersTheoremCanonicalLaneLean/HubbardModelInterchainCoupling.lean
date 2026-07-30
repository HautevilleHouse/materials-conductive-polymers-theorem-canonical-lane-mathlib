import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure HubbardModelInterchainCoupling where
  hoppingIntegral : ℝ
  onSiteEnergy : ℝ
  interchainCoupling : ℝ
  couplingAntisymmetry : Prop

def HubbardModelInterchainCouplingClosed (H : HubbardModelInterchainCoupling) : Prop :=
  H.hoppingIntegral > 0 ∧ H.onSiteEnergy > 0 ∧ H.interchainCoupling > 0 ∧ H.couplingAntisymmetry

theorem hubbard_model_interchain_coupling_closed (H : HubbardModelInterchainCoupling) (h : H.couplingAntisymmetry) :
    HubbardModelInterchainCouplingClosed H := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ h))
  · exact H.hoppingIntegral > 0
  · exact H.onSiteEnergy > 0
  · exact H.interchainCoupling > 0

end HautevilleHouse.MaterialsConductivePolymersTheoremCanonicalLaneLean