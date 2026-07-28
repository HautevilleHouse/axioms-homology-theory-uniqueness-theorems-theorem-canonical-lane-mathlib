import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean

structure HomologyTheoryObject where
  spaceType : Type u
  homologyGroups : ℕ → Type v
  satisfiesAxioms : Prop

structure AdmissibleHomologyClass where
  object : HomologyTheoryObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleHomologyClass) : Prop :=
  A.object.satisfiesAxioms ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean
end HautevilleHouse