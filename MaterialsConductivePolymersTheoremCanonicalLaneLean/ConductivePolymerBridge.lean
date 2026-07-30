import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsConductivePolymersTheoremCanonicalLaneLean.ConductivePolymerStructure

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ConductivePolymerWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse
