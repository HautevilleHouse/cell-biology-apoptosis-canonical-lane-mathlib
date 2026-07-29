import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure ApoptosisAdmittedObject where
  cellType : Type
  signalReceived : Prop
  caspaseActivation : Prop
  dnaFragmentation : Prop
  conclusion : caspaseActivation ∧ dnaFragmentation

structure AdmissibleClass extends ApoptosisAdmittedObject where
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.caspaseActivation ∧ A.dnaFragmentation ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse