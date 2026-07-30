import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersTheoremCanonicalLaneLean

structure CrystallographyLatticePackage where
  spaceGroup : String
  bravaisLattice : String
  unitCellDimensions : Nat
  basisVectors : Array String
  symmetryOperations : Prop

structure CrystallographyLatticeEvidence (C : CrystallographyLatticePackage) where
  symmetryOperationsClosed : C.symmetryOperations

def CrystallographyLatticeClosed (C : CrystallographyLatticePackage) : Prop :=
  C.symmetryOperations

theorem crystallography_lattice_closed_from_evidence (C : CrystallographyLatticePackage)
    (E : CrystallographyLatticeEvidence C) : CrystallographyLatticeClosed C := by
  exact E.symmetryOperationsClosed

end MaterialsConductivePolymersTheoremCanonicalLaneLean
end HautevilleHouse