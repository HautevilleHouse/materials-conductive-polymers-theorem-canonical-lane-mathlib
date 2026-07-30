import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsConductivePolymersTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PolymerCrystallinityClosed A.object.crystallinity ∧ PhaseDiagramClosed A.object.phaseDiagram ∧
  ElasticityTensorClosed A.object.elasticity ∧ FractureToughnessClosed A.object.fracture ∧
  ConductivityModelClosed A.object.conductivity

theorem bridgeFromAdmissibleClass (A : AdmissibleClass) : bridgeClosed A := by
  rcases A.object with ⟨C, P, E, F, M⟩
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_)))
  · rcases A.gateWitness with (h | h)
    · exact h
    · exact h
  · rcases A.gateWitness with (h | h)
    · exact h
    · exact h
  · rcases A.gateWitness with (h | h)
    · exact h
    · exact h
  · rcases A.gateWitness with (h | h)
    · exact h
    · exact h
  · rcases A.gateWitness with (h | h)
    · exact h
    · exact h

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse