import HautevilleHouse.CellBiologyApoptosisCanonicalLaneLean.ApoptosisSignalingPathway

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure Bcl2FamilyPackage {P : ApoptosisPathwayPackage} (E : ApoptosisPathwayEvidence P) where
  proApoptoticBaxBakActivated : Prop
  antiApoptoticBcl2Inhibited : Prop
  mitochondrialOuterMembranePermeabilization : Prop

structure Bcl2FamilyEvidence {P : ApoptosisPathwayPackage} {E : ApoptosisPathwayEvidence P} (B : Bcl2FamilyPackage E) where
  proApoptoticBaxBakActivatedClosed : B.proApoptoticBaxBakActivated
  antiApoptoticBcl2InhibitedClosed : B.antiApoptoticBcl2Inhibited
  mitochondrialOuterMembranePermeabilizationClosed : B.mitochondrialOuterMembranePermeabilization

def Bcl2FamilyClosed {P : ApoptosisPathwayPackage} {E : ApoptosisPathwayEvidence P} (B : Bcl2FamilyPackage E) : Prop :=
  B.proApoptoticBaxBakActivated ∧ B.antiApoptoticBcl2Inhibited ∧ B.mitochondrialOuterMembranePermeabilization

theorem bcl2_family_closed_from_evidence {P : ApoptosisPathwayPackage} {E : ApoptosisPathwayEvidence P} (B : Bcl2FamilyPackage E) (Ev : Bcl2FamilyEvidence B) : Bcl2FamilyClosed B := by
  exact And.intro Ev.proApoptoticBaxBakActivatedClosed (And.intro Ev.antiApoptoticBcl2InhibitedClosed Ev.mitochondrialOuterMembranePermeabilizationClosed)

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse
