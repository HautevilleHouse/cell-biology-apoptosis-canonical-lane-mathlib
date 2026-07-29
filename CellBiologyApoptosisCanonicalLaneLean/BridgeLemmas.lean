import HautevilleHouse.CellBiologyApoptosisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ApoptosisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse