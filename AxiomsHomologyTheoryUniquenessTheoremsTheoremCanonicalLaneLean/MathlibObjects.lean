import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HomologyUniquenessSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HomologyUniquenessAdmittedObject where
  space : HomologyUniquenessSpace
  eilenbergSteenrodAxiomsSatisfied : Prop
  uniquenessResult : Prop
  conclusion : uniquenessResult

structure HomologyUniquenessEndgameState where
  object : HomologyUniquenessAdmittedObject

def HomologyUniquenessWitnessClosed (O : HomologyUniquenessAdmittedObject) : Prop :=
  O.uniquenessResult

end AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean
end HautevilleHouse