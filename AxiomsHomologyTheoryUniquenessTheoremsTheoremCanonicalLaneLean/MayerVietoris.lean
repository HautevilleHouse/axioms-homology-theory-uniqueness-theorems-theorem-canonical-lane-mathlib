import canonicalLaneMathlib.AdmissibleClass
import AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean.EilenbergSteenrodAxioms

namespace HautevilleHouse
namespace AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean

structure MayerVietorisPackage {pkg : EilenbergSteenrodPackage} (epkg : EilenbergSteenrodEvidence pkg) where
  exactSequence : Prop
  connectingMap : Prop
  naturality : Prop

structure MayerVietorisEvidence {pkg : EilenbergSteenrodPackage} {epkg : EilenbergSteenrodEvidence pkg}
    (M : MayerVietorisPackage epkg) where
  exactSequenceClosed : M.exactSequence
  connectingMapClosed : M.connectingMap
  naturalityClosed : M.naturality

def MayerVietorisClosed {pkg : EilenbergSteenrodPackage} {epkg : EilenbergSteenrodEvidence pkg}
    (M : MayerVietorisPackage epkg) : Prop :=
  M.exactSequence ∧ M.connectingMap ∧ M.naturality

theorem mayer_vietoris_closed_from_evidence {pkg : EilenbergSteenrodPackage} {epkg : EilenbergSteenrodEvidence pkg}
    (M : MayerVietorisPackage epkg) (ev : MayerVietorisEvidence M) : MayerVietorisClosed M := by
  exact And.intro ev.exactSequenceClosed (And.intro ev.connectingMapClosed ev.naturalityClosed)

end AxiomsHomologyTheoryUniquenessTheoremsTheoremCanonicalLaneLean
end HautevilleHouse