import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure MitochondrialDysfunctionPackage where
  membranePotentialLoss : Prop
  cytochromeCRelease : Prop
  reactiveOxygenSpeciesProduction : Prop

structure MitochondrialDysfunctionEvidence (M : MitochondrialDysfunctionPackage) where
  membranePotentialLossClosed : M.membranePotentialLoss
  cytochromeCReleaseClosed : M.cytochromeCRelease
  reactiveOxygenSpeciesProductionClosed : M.reactiveOxygenSpeciesProduction

def MitochondrialDysfunctionClosed (M : MitochondrialDysfunctionPackage) : Prop :=
  M.membranePotentialLoss ∧ M.cytochromeCRelease ∧ M.reactiveOxygenSpeciesProduction

theorem mitochondrial_dysfunction_closed_from_evidence (M : MitochondrialDysfunctionPackage)
    (E : MitochondrialDysfunctionEvidence M) : MitochondrialDysfunctionClosed M := by
  exact And.intro E.membranePotentialLossClosed
    (And.intro E.cytochromeCReleaseClosed E.reactiveOxygenSpeciesProductionClosed)

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse