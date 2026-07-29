import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure CaspaseCascadePackage where
  initiatorCaspaseActivation : Prop
  executionerCaspaseActivation : Prop
  parpCleavage : Prop
  dnaFragmentation : Prop
  cellShrinkage : Prop

structure CaspaseCascadeEvidence (C : CaspaseCascadePackage) where
  initiatorCaspaseActivationClosed : C.initiatorCaspaseActivation
  executionerCaspaseActivationClosed : C.executionerCaspaseActivation
  parpCleavageClosed : C.parpCleavage
  dnaFragmentationClosed : C.dnaFragmentation
  cellShrinkageClosed : C.cellShrinkage

def CaspaseCascadeClosed (C : CaspaseCascadePackage) : Prop :=
  C.initiatorCaspaseActivation ∧ C.executionerCaspaseActivation ∧
  C.parpCleavage ∧ C.dnaFragmentation ∧ C.cellShrinkage

theorem caspase_cascade_closed_from_evidence (C : CaspaseCascadePackage) (Ev : CaspaseCascadeEvidence C) :
    CaspaseCascadeClosed C := by
  exact And.intro Ev.initiatorCaspaseActivationClosed
    (And.intro Ev.executionerCaspaseActivationClosed
      (And.intro Ev.parpCleavageClosed
        (And.intro Ev.dnaFragmentationClosed Ev.cellShrinkageClosed)))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse