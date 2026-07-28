import AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean.EilenbergSteenrodAxioms

/-!
# Uniqueness Theorem Package
-/

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean

structure UniquenessTheorem {E : EilenbergSteenrodAxioms} where
  category : Type u
  target : Type v
  homologyTheory : EilenbergSteenrodAxioms
  underlyingCategoryStructure : Prop
  targetCategoryStructure : Prop
  uniquenessStatement : Prop

structure UniquenessTheoremEvidence {E : EilenbergSteenrodAxioms} (U : UniquenessTheorem E) where
  underlyingCategoryStructureClosed : U.underlyingCategoryStructure
  targetCategoryStructureClosed : U.targetCategoryStructure
  uniquenessStatementClosed : U.uniquenessStatement

def UniquenessTheoremClosed {E : EilenbergSteenrodAxioms} (U : UniquenessTheorem E) : Prop :=
  U.underlyingCategoryStructure ∧ U.targetCategoryStructure ∧ U.uniquenessStatement

theorem uniqueness_theorem_closed_from_evidence
    {E : EilenbergSteenrodAxioms} (U : UniquenessTheorem E) (Ev : UniquenessTheoremEvidence U) :
    UniquenessTheoremClosed U := by
  exact And.intro Ev.underlyingCategoryStructureClosed
    (And.intro Ev.targetCategoryStructureClosed Ev.uniquenessStatementClosed)

end AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean
end HautevilleHouse