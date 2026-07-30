import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure ConductivityTensorPackage where
  temperature : ℝ
  dopingLevel : ℝ
  anisotropy : Prop
  hoppingTransport : Prop
  metallicRegime : Prop
  tensorComponents : ℝ × ℝ × ℝ

structure ConductivityTensorEvidence (C : ConductivityTensorPackage) where
  anisotropyClosed : C.anisotropy
  hoppingTransportClosed : C.hoppingTransport
  metallicRegimeClosed : C.metallicRegime

def ConductivityTensorClosed (C : ConductivityTensorPackage) : Prop :=
  C.anisotropy ∧ C.hoppingTransport ∧ C.metallicRegime

theorem conductivity_tensor_closed_from_evidence (C : ConductivityTensorPackage)
    (Ev : ConductivityTensorEvidence C) : ConductivityTensorClosed C := by
  exact And.intro Ev.anisotropyClosed (And.intro Ev.hoppingTransportClosed Ev.metallicRegimeClosed)

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse