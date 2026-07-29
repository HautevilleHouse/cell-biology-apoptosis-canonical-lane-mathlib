import HautevilleHouse.CellBiologyApoptosisCanonicalLaneLean.MitochondrialPathway

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure ExtrinsicPathwayPackage {S : ApoptosisSignalingPackage} {C : CaspaseActivationPackage S} {B : Bcl2FamilyPackage S C} {M : MitochondrialPathwayPackage S C B} where
  deathLigandBinding : Prop
  dISCFormation : Prop
  caspase8Activation : Prop
  bIDTruncation : Prop

structure ExtrinsicPathwayEvidence {S : ApoptosisSignalingPackage} {C : CaspaseActivationPackage S} {B : Bcl2FamilyPackage S C} {M : MitochondrialPathwayPackage S C B} (E : ExtrinsicPathwayPackage S C B M) where
  deathLigandBindingClosed : E.deathLigandBinding
  dISCFormationClosed : E.dISCFormation
  caspase8ActivationClosed : E.caspase8Activation
  bIDTruncationClosed : E.bIDTruncation

def ExtrinsicPathwayClosed {S : ApoptosisSignalingPackage} {C : CaspaseActivationPackage S} {B : Bcl2FamilyPackage S C} {M : MitochondrialPathwayPackage S C B} (E : ExtrinsicPathwayPackage S C B M) : Prop :=
  E.deathLigandBinding ∧ E.dISCFormation ∧ E.caspase8Activation ∧ E.bIDTruncation

theorem extrinsic_pathway_closed_from_evidence {S : ApoptosisSignalingPackage} {C : CaspaseActivationPackage S} {B : Bcl2FamilyPackage S C} {M : MitochondrialPathwayPackage S C B} (E : ExtrinsicPathwayPackage S C B M) (Ev : ExtrinsicPathwayEvidence E) :
    ExtrinsicPathwayClosed E := by
  exact And.intro Ev.deathLigandBindingClosed
    (And.intro Ev.dISCFormationClosed
      (And.intro Ev.caspase8ActivationClosed Ev.bIDTruncationClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse