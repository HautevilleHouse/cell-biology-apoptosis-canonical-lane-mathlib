import HautevilleHouse.CellBiologyApoptosisCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure AdmissibleClass where
  object : ApoptosisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ApoptosisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse