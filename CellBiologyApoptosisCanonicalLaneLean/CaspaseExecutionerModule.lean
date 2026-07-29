import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure CaspaseExecutionerModulePackage where
  initiatorCaspaseActivation : Prop
  executionerCaspaseCleavage : Prop
  substrateProteolysis : Prop
  apoptoticBodyFormation : Prop

structure CaspaseExecutionerModuleEvidence (C : CaspaseExecutionerModulePackage) where
  initiatorCaspaseActivationClosed : C.initiatorCaspaseActivation
  executionerCaspaseCleavageClosed : C.executionerCaspaseCleavage
  substrateProteolysisClosed : C.substrateProteolysis
  apoptoticBodyFormationClosed : C.apoptoticBodyFormation

def CaspaseExecutionerModuleClosed (C : CaspaseExecutionerModulePackage) : Prop :=
  C.initiatorCaspaseActivation ∧ C.executionerCaspaseCleavage ∧
  C.substrateProteolysis ∧ C.apoptoticBodyFormation

theorem caspase_executioner_module_closed_from_evidence
    (C : CaspaseExecutionerModulePackage) (E : CaspaseExecutionerModuleEvidence C) :
    CaspaseExecutionerModuleClosed C := by
  exact And.intro E.initiatorCaspaseActivationClosed
    (And.intro E.executionerCaspaseCleavageClosed
      (And.intro E.substrateProteolysisClosed E.apoptoticBodyFormationClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse
