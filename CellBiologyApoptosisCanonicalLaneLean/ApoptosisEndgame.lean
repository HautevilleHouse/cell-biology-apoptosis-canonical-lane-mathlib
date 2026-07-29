import HautevilleHouse.CellBiologyApoptosisCanonicalLaneLean.CaspaseCascade

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure ApoptosisEndgamePackage {S : ApoptosisSignalingPackage} {B : Bcl2FamilyRegulationPackage S} {C : CaspaseCascadePackage B} where
  cellShrinkage : Prop
  chromatinCondensation : Prop
  membraneBlebbing : Prop
  apoptoticBodyFormation : Prop

structure ApoptosisEndgameEvidence {S : ApoptosisSignalingPackage} {B : Bcl2FamilyRegulationPackage S} {C : CaspaseCascadePackage B} (E : ApoptosisEndgamePackage C) where
  cellShrinkageClosed : E.cellShrinkage
  chromatinCondensationClosed : E.chromatinCondensation
  membraneBlebbingClosed : E.membraneBlebbing
  apoptoticBodyFormationClosed : E.apoptoticBodyFormation

def ApoptosisEndgameClosed {S : ApoptosisSignalingPackage} {B : Bcl2FamilyRegulationPackage S} {C : CaspaseCascadePackage B} (E : ApoptosisEndgamePackage C) : Prop :=
  E.cellShrinkage ∧ E.chromatinCondensation ∧ E.membraneBlebbing ∧ E.apoptoticBodyFormation

theorem apoptosis_endgame_closed_from_evidence {S : ApoptosisSignalingPackage} {B : Bcl2FamilyRegulationPackage S} {C : CaspaseCascadePackage B} (E : ApoptosisEndgamePackage C) (Ev : ApoptosisEndgameEvidence E) : ApoptosisEndgameClosed E :=
  And.intro Ev.cellShrinkageClosed (And.intro Ev.chromatinCondensationClosed (And.intro Ev.membraneBlebbingClosed Ev.apoptoticBodyFormationClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse