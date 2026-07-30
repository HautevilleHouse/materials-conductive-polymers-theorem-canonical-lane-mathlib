import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure MorphologyPackage where
  crystallinity : ℝ
  domainSize : ℝ
  percolationThreshold : ℝ
  amorphousRegionFraction : ℝ

def MorphologyClosed (M : MorphologyPackage) : Prop :=
  M.crystallinity > 0 ∧ M.percolationThreshold < 1

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse