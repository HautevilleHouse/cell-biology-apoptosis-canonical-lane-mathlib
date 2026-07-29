import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure ApoptosisSignalingNetwork where
  initiatorCaspases : Type u
  effectorCaspases : Type v
  mitochondrialOuterMembranePermeabilization : Prop
  cytochromeCRelease : Prop
  apoptosomeFormation : Prop

structure ApoptosisSignalingEvidence (N : ApoptosisSignalingNetwork) where
  initiatorCaspasesActivated : N.initiatorCaspases
  effectorCaspasesActivated : N.effectorCaspases
  mOMPConfirmed : N.mitochondrialOuterMembranePermeabilization
  cytochromeCReleased : N.cytochromeCRelease
  apoptosomeAssembled : N.apoptosomeFormation

def ApoptosisSignalingClosed (N : ApoptosisSignalingNetwork) : Prop :=
  N.initiatorCaspases ∧ N.effectorCaspases ∧ N.mitochondrialOuterMembranePermeabilization ∧
  N.cytochromeCRelease ∧ N.apoptosomeFormation

theorem apoptosis_signaling_closed_from_evidence (N : ApoptosisSignalingNetwork)
    (E : ApoptosisSignalingEvidence N) : ApoptosisSignalingClosed N := by
  exact And.intro E.initiatorCaspasesActivated
    (And.intro E.effectorCaspasesActivated
      (And.intro E.mOMPConfirmed
        (And.intro E.cytochromeCReleased E.apoptosomeAssembled)))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse