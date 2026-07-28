import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean

structure EilenbergSteenrodAxioms where
  dimensionAxiom : Prop
  homotopyAxiom : Prop
  exactnessAxiom : Prop
  excisionAxiom : Prop

def EilenbergSteenrodAxiomsClosed (A : EilenbergSteenrodAxioms) : Prop :=
  A.dimensionAxiom ∧ A.homotopyAxiom ∧ A.exactnessAxiom ∧ A.excisionAxiom

end AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean
end HautevilleHouse