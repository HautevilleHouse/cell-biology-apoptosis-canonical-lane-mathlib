import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure Bcl2RegulationPackage where
  proApoptoticActivity : Prop
  antiApoptoticActivity : Prop
  baxBakOligomerization : Prop
  bh3OnlySensitization : Prop

structure Bcl2RegulationEvidence (P : Bcl2RegulationPackage) where
  proApoptoticActivityClosed : P.proApoptoticActivity
  antiApoptoticActivityClosed : P.antiApoptoticActivity
  baxBakOligomerizationClosed : P.baxBakOligomerization
  bh3OnlySensitizationClosed : P.bh3OnlySensitization

def Bcl2RegulationClosed (P : Bcl2RegulationPackage) : Prop :=
  P.proApoptoticActivity ∧ P.antiApoptoticActivity ∧ P.baxBakOligomerization ∧ P.bh3OnlySensitization

theorem bcl2_regulation_closed_from_evidence
    (P : Bcl2RegulationPackage) (E : Bcl2RegulationEvidence P) :
    Bcl2RegulationClosed P := by
  exact And.intro E.proApoptoticActivityClosed
    (And.intro E.antiApoptoticActivityClosed
      (And.intro E.baxBakOligomerizationClosed E.bh3OnlySensitizationClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse