import canonicalLaneMathlib.AdmissibleClass
import AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean

structure EilenbergSteenrodPackage where
  exactnessAxiom : Prop
  homotopyAxiom : Prop
  excisionAxiom : Prop
  dimensionAxiom : Prop
  additivityAxiom : Prop

structure EilenbergSteenrodEvidence (pkg : EilenbergSteenrodPackage) where
  exactnessClosed : pkg.exactnessAxiom
  homotopyClosed : pkg.homotopyAxiom
  excisionClosed : pkg.excisionAxiom
  dimensionClosed : pkg.dimensionAxiom
  additivityClosed : pkg.additivityAxiom

def EilenbergSteenrodClosed (pkg : EilenbergSteenrodPackage) : Prop :=
  pkg.exactnessAxiom ∧ pkg.homotopyAxiom ∧ pkg.excisionAxiom ∧ pkg.dimensionAxiom ∧ pkg.additivityAxiom

theorem eilenberg_steenrod_closed_from_evidence (pkg : EilenbergSteenrodPackage)
    (ev : EilenbergSteenrodEvidence pkg) : EilenbergSteenrodClosed pkg := by
  exact And.intro ev.exactnessClosed (And.intro ev.homotopyClosed (And.intro ev.excisionClosed (And.intro ev.dimensionClosed ev.additivityClosed)))

end AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean
end HautevilleHouse