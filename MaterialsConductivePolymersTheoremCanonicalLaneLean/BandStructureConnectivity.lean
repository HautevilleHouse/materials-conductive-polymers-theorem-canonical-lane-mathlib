import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure BandStructureConnectivity where
  gapEnergy : ℝ
  effectiveMass : ℝ
  connectivityIndex : ℕ
  insulationGap : Prop

def BandStructureConnectivityClosed (B : BandStructureConnectivity) : Prop :=
  B.gapEnergy > 0 ∧ B.effectiveMass > 0 ∧ B.connectivityIndex ≥ 2 ∧ B.insulationGap

theorem band_structure_connectivity_closed (B : BandStructureConnectivity) (h : B.insulationGap) :
    BandStructureConnectivityClosed B := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ h))
  · exact B.gapEnergy > 0
  · exact B.effectiveMass > 0
  · exact B.connectivityIndex ≥ 2

end HautevilleHouse.MaterialsConductivePolymersTheoremCanonicalLaneLean