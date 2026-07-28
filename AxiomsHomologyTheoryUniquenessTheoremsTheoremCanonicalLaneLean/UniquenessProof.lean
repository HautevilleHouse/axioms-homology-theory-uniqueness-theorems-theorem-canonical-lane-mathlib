import canonicalLaneMathlib.AdmissibleClass
import AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean.EilenbergSteenrodAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean

structure UniquenessTheoremPackage {A : HomologyAxiomsPackage}
    (E : EilenbergSteenrodAxiomsPackage A) where
  targetCategory : Type u
  sourceFunctor : Type v
  uniquenessMap : Type w
  uniquenessProperty : Prop
  uniquenessMapExists : uniquenessProperty

structure UniquenessTheoremEvidence {A : HomologyAxiomsPackage}
    {E : EilenbergSteenrodAxiomsPackage A}
    (U : UniquenessTheoremPackage E) where
  uniquenessPropertyClosed : U.uniquenessProperty

def UniquenessTheoremClosed {A : HomologyAxiomsPackage}
    {E : EilenbergSteenrodAxiomsPackage A}
    (U : UniquenessTheoremPackage E) : Prop :=
  U.uniquenessProperty

theorem uniqueness_theorem_closed_from_evidence
    {A : HomologyAxiomsPackage} {E : EilenbergSteenrodAxiomsPackage A}
    (U : UniquenessTheoremPackage E)
    (Ev : UniquenessTheoremEvidence U) : UniquenessTheoremClosed U := by
  exact Ev.uniquenessPropertyClosed

end AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean
end HautevilleHouse