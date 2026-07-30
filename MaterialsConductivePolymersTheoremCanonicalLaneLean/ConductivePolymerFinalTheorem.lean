import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsConductivePolymersTheoremCanonicalLaneLean.ConductivePolymerBridge
import HautevilleHouse.MaterialsConductivePolymersTheoremCanonicalLaneLean.DopingGate

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

def ConstrainedConductivePolymerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_conductive_polymer_endgame (A : AdmissibleClass) :
    ConstrainedConductivePolymerClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse
