import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure MitochondrialApoptosisPackage where
  mOMP : Prop
  cytochromeCRelease : Prop
  apoptosomeFormation : Prop
  smacRelease : Prop
  iapInhibition : Prop

structure MitochondrialApoptosisEvidence (M : MitochondrialApoptosisPackage) where
  mOMPClosed : M.mOMP
  cytochromeCReleaseClosed : M.cytochromeCRelease
  apoptosomeFormationClosed : M.apoptosomeFormation
  smacReleaseClosed : M.smacRelease
  iapInhibitionClosed : M.iapInhibition

def MitochondrialApoptosisClosed (M : MitochondrialApoptosisPackage) : Prop :=
  M.mOMP ∧ M.cytochromeCRelease ∧ M.apoptosomeFormation ∧ M.smacRelease ∧ M.iapInhibition

theorem mitochondrial_apoptosis_closed_from_evidence (M : MitochondrialApoptosisPackage) (Ev : MitochondrialApoptosisEvidence M) :
    MitochondrialApoptosisClosed M := by
  exact And.intro Ev.mOMPClosed
    (And.intro Ev.cytochromeCReleaseClosed
      (And.intro Ev.apoptosomeFormationClosed
        (And.intro Ev.smacReleaseClosed Ev.iapInhibitionClosed)))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse