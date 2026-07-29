import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure Bcl2FamilyRegulationPackage where
  proApoptoticBaxBakActivation : Prop
  antiApoptoticBcl2Suppression : Prop
  bh3OnlySensitization : Prop
  mPoreFormation : Prop

structure Bcl2FamilyRegulationEvidence (B : Bcl2FamilyRegulationPackage) where
  proApoptoticBaxBakActivationClosed : B.proApoptoticBaxBakActivation
  antiApoptoticBcl2SuppressionClosed : B.antiApoptoticBcl2Suppression
  bh3OnlySensitizationClosed : B.bh3OnlySensitization
  mPoreFormationClosed : B.mPoreFormation

def Bcl2FamilyRegulationClosed (B : Bcl2FamilyRegulationPackage) : Prop :=
  B.proApoptoticBaxBakActivation ∧ B.antiApoptoticBcl2Suppression ∧
  B.bh3OnlySensitization ∧ B.mPoreFormation

theorem bcl2_family_regulation_closed_from_evidence
    (B : Bcl2FamilyRegulationPackage) (E : Bcl2FamilyRegulationEvidence B) :
    Bcl2FamilyRegulationClosed B := by
  exact And.intro E.proApoptoticBaxBakActivationClosed
    (And.intro E.antiApoptoticBcl2SuppressionClosed
      (And.intro E.bh3OnlySensitizationClosed E.mPoreFormationClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse
