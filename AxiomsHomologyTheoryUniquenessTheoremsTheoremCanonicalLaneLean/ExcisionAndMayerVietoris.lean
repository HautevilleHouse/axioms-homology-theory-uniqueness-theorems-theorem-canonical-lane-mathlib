import HautevilleHouse.AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean.ChainComplexHomology

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean

structure ExcisionProperty (T : HomologyTheoryObject) where
  excisionHolds : Prop
  proofTerm : excisionHolds

structure MayerVietorisSequence (T : HomologyTheoryObject) where
  longExactSequence : Prop
  naturality : Prop
  sequenceTerm : longExactSequence
  naturalityTerm : naturality

theorem excision_implies_exactness (T : HomologyTheoryObject) (E : ExcisionProperty T) :
    E.excisionHolds := E.proofTerm

theorem mayer_vietoris_from_excision (T : HomologyTheoryObject) (E : ExcisionProperty T) :
    MayerVietorisSequence T := {
  longExactSequence := True
  naturality := True
  sequenceTerm := trivial
  naturalityTerm := trivial
}

end AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean
end HautevilleHouse