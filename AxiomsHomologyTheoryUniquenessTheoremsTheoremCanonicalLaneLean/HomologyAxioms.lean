import HautevilleHouse.AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean.AdmissibleHomologyClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean

structure EilenbergSteenrodAxioms (T : HomologyTheoryObject) where
  homotopyInvariance : Prop
  excision : Prop
  exactness : Prop
  dimension : Prop
  additivity : Prop
  homotopyInvarianceTerm : homotopyInvariance
  excisionTerm : excision
  exactnessTerm : exactness
  dimensionTerm : dimension
  additivityTerm : additivity

structure AxiomSatisfaction (T : HomologyTheoryObject) where
  axioms : EilenbergSteenrodAxioms T
  axiomsClosed : T.satisfiesAxioms

theorem axioms_satisfaction_implies_closed (T : HomologyTheoryObject) (S : AxiomSatisfaction T) :
    T.satisfiesAxioms := S.axiomsClosed

end AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean
end HautevilleHouse