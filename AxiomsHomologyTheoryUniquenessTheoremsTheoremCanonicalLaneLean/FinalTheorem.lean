import canonicalLaneMathlib.AdmissibleClass
import AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean.BridgeLemmas
import AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean

def ConstrainedHomologyUniquenessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem homology_uniqueness_endgame (A : AdmissibleClass) : ConstrainedHomologyUniquenessClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean
end HautevilleHouse