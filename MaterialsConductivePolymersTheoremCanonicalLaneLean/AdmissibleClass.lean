import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure AdmittedObject where
  crystallinity : PolymerCrystallinityPackage
  phaseDiagram : PhaseDiagramPackage
  elasticity : ElasticityTensorPackage
  fracture : FractureToughnessPackage
  conductivity : ConductivityModelPackage

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (PolymerCrystallinityClosed A.object.crystallinity ∧ PhaseDiagramClosed A.object.phaseDiagram ∧
   ElasticityTensorClosed A.object.elasticity ∧ FractureToughnessClosed A.object.fracture ∧
   ConductivityModelClosed A.object.conductivity) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse