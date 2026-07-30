import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsConductivePolymersTheoremCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.MaterialsConductivePolymersTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

def ConstrainedMaterialsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_materials_endgame (A : AdmissibleClass) :
    ConstrainedMaterialsClosure A := by
  exact And.intro (bridgeFromAdmissibleClass A) (gateFromAdmissibleClass A)

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse