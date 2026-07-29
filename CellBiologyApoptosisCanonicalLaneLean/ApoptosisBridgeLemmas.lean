import CellBiologyApoptosisCanonicalLaneLean.ApoptosisAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.caspaseActivation ∧ A.dnaFragmentation

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.conclusion

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse