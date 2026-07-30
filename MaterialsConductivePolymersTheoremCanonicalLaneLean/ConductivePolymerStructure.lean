import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure ConductivePolymerObject where
  monomerChain : Type u
  conjugationLength : Prop
  dopingLevel : Prop
  conductivity : Prop
  chargeTransportMechanism : Prop

structure ConductivePolymerAdmittedObject where
  polymer : ConductivePolymerObject
  bandGapEngineered : Prop
  percolationThresholdReached : Prop
  chargeMobilitySufficient : Prop
  conclusion : chargeMobilitySufficient

def ConductivePolymerWitnessClosed (O : ConductivePolymerAdmittedObject) : Prop :=
  O.chargeMobilitySufficient

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse
