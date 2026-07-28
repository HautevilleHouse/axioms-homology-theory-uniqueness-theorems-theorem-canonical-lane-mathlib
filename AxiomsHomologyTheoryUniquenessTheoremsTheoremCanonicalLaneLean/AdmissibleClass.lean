import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean

structure HomologyTheory where
  carrier : Type u → Type v
  boundary : ∀ (X : Type u) (A : Set X), carrier X → carrier A
  exactness : ∀ (X : Type u) (A : Set X), Prop
  homotopy : ∀ (f g : X → Y) (h : Homotopy f g), ∀ (x : X), carrier X → carrier Y
  excision : ∀ (X : Type u) (A B : Set X), Prop
  dimension : ∀ (X : Type u), carrier X → Prop

structure AdmissibleClass where
  homology : HomologyTheory
  satisfaction : Prop
  remainder : Prop
  gateWitness : satisfaction ∨ remainder

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.satisfaction ∧ (A.satisfaction ∨ A.remainder)

end AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean
end HautevilleHouse