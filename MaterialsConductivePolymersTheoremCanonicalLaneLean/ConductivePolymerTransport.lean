import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure ConductivePolymerTransportPackage where
  chargeCarrierType : String
  mobilityModel : String
  conductivityEquation : Prop
  temperatureDependence : Prop
  dopingLevel : Float

structure ConductivePolymerTransportEvidence (C : ConductivePolymerTransportPackage) where
  conductivityEquationClosed : C.conductivityEquation
  temperatureDependenceClosed : C.temperatureDependence

def ConductivePolymerTransportClosed (C : ConductivePolymerTransportPackage) : Prop :=
  C.conductivityEquation ∧ C.temperatureDependence

theorem conductive_polymer_transport_closed_from_evidence
    (C : ConductivePolymerTransportPackage)
    (Ev : ConductivePolymerTransportEvidence C) : ConductivePolymerTransportClosed C := by
  exact And.intro Ev.conductivityEquationClosed Ev.temperatureDependenceClosed

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse