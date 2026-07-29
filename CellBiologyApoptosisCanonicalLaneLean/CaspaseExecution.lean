import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure CaspaseExecutionPackage where
  initiatorCaspaseActivation : Prop
  executionerCaspaseActivation : Prop
  substrateCleavage : Prop
  cellDisassembly : Prop

structure CaspaseExecutionEvidence (P : CaspaseExecutionPackage) where
  initiatorCaspaseActivationClosed : P.initiatorCaspaseActivation
  executionerCaspaseActivationClosed : P.executionerCaspaseActivation
  substrateCleavageClosed : P.substrateCleavage
  cellDisassemblyClosed : P.cellDisassembly

def CaspaseExecutionClosed (P : CaspaseExecutionPackage) : Prop :=
  P.initiatorCaspaseActivation ∧ P.executionerCaspaseActivation ∧ P.substrateCleavage ∧ P.cellDisassembly

theorem caspase_execution_closed_from_evidence
    (P : CaspaseExecutionPackage) (E : CaspaseExecutionEvidence P) :
    CaspaseExecutionClosed P := by
  exact And.intro E.initiatorCaspaseActivationClosed
    (And.intro E.executionerCaspaseActivationClosed
      (And.intro E.substrateCleavageClosed E.cellDisassemblyClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse