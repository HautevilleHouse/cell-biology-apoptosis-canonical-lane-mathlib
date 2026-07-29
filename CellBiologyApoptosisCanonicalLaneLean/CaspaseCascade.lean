import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure CaspaseCascadePackage where
  initiatorCaspasesActivated : Prop
  executionerCaspasesActivated : Prop
  substrateCleavageProceeding : Prop
  cellDeathExecuted : Prop

structure CaspaseCascadeEvidence (C : CaspaseCascadePackage) where
  initiatorCaspasesActivatedClosed : C.initiatorCaspasesActivated
  executionerCaspasesActivatedClosed : C.executionerCaspasesActivated
  substrateCleavageProceedingClosed : C.substrateCleavageProceeding
  cellDeathExecutedClosed : C.cellDeathExecuted

def CaspaseCascadeClosed (C : CaspaseCascadePackage) : Prop :=
  C.initiatorCaspasesActivated ∧ C.executionerCaspasesActivated ∧
  C.substrateCleavageProceeding ∧ C.cellDeathExecuted

theorem caspase_cascade_closed_from_evidence (C : CaspaseCascadePackage)
    (E : CaspaseCascadeEvidence C) : CaspaseCascadeClosed C := by
  exact And.intro E.initiatorCaspasesActivatedClosed
    (And.intro E.executionerCaspasesActivatedClosed
      (And.intro E.substrateCleavageProceedingClosed E.cellDeathExecutedClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse