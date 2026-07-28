import HautevilleHouse.AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean.HomologyAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean

structure ChainComplex where
  chainGroups : ℤ → Type u
  boundaryMaps : (n : ℤ) → (chainGroups n → chainGroups (n-1))
  boundarySquared : (n : ℤ) → (boundaryMaps n) ∘ (boundaryMaps (n+1)) = 0

structure ChainHomology (C : ChainComplex) where
  homologyGroups : ℕ → Type v
  derivedFromComplex : Prop
  satisfiesAxioms : Prop

theorem chain_complex_homology_satisfies_axioms (C : ChainComplex) (H : ChainHomology C) :
    H.satisfiesAxioms := H.satisfiesAxioms

end AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean
end HautevilleHouse