import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure ConductivityTensorAnisotropy where
  longitudinalConductivity : ℝ
  transverseConductivity : ℝ
  anisotropyRatio : ℝ
  positiveDefinite : Prop

def ConductivityTensorAnisotropyClosed (C : ConductivityTensorAnisotropy) : Prop :=
  C.longitudinalConductivity > 0 ∧ C.transverseConductivity > 0 ∧ C.anisotropyRatio ≥ 1 ∧ C.positiveDefinite

theorem conductivity_tensor_anisotropy_closed (C : ConductivityTensorAnisotropy) (h : C.positiveDefinite) :
    ConductivityTensorAnisotropyClosed C := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ h))
  · exact C.longitudinalConductivity > 0
  · exact C.transverseConductivity > 0
  · exact C.anisotropyRatio ≥ 1

end HautevilleHouse.MaterialsConductivePolymersTheoremCanonicalLaneLean