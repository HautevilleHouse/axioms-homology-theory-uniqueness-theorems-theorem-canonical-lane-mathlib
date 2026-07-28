import HautevilleHouse.AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean.ExcisionAndMayerVietoris

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleHomologyClass) : Prop :=
  A.object.satisfiesAxioms

theorem bridge_from_admissible_class (A : AdmissibleHomologyClass) :
    bridgeClosed A := by
  exact A.object.satisfiesAxioms

def gateClosed (A : AdmissibleHomologyClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleHomologyClass) :
    gateClosed A := by
  exact A.gateWitness

end AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean
end HautevilleHouse