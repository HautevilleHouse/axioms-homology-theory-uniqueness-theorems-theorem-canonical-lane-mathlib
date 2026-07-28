import canonicalLaneMathlib.AdmissibleClass
import AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean.EilenbergSteenrodAxioms
import AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean.MayerVietoris

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean

structure UniquenessTheoremPackage {pkg : EilenbergSteenrodPackage} {epkg : EilenbergSteenrodEvidence pkg} where
  sourceAxiomsSatisfied : Prop
  targetAxiomsSatisfied : Prop
  isomorphismExists : Prop

structure UniquenessTheoremEvidence {pkg : EilenbergSteenrodPackage} {epkg : EilenbergSteenrodEvidence pkg}
    (U : UniquenessTheoremPackage epkg) where
  sourceAxiomsClosed : U.sourceAxiomsSatisfied
  targetAxiomsClosed : U.targetAxiomsSatisfied
  isomorphismClosed : U.isomorphismExists

def UniquenessTheoremClosed {pkg : EilenbergSteenrodPackage} {epkg : EilenbergSteenrodEvidence pkg}
    (U : UniquenessTheoremPackage epkg) : Prop :=
  U.sourceAxiomsSatisfied ∧ U.targetAxiomsSatisfied ∧ U.isomorphismExists

theorem uniqueness_theorem_closed_from_evidence {pkg : EilenbergSteenrodPackage} {epkg : EilenbergSteenrodEvidence pkg}
    (U : UniquenessTheoremPackage epkg) (ev : UniquenessTheoremEvidence U) : UniquenessTheoremClosed U := by
  exact And.intro ev.sourceAxiomsClosed (And.intro ev.targetAxiomsClosed ev.isomorphismClosed)

end AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean
end HautevilleHouse