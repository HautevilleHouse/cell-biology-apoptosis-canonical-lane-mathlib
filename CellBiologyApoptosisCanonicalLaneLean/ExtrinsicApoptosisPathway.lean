import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure ExtrinsicApoptosisPathwayPackage where
  deathReceptorActivation : Prop
  discFormation : Prop
  caspase8Recruitment : Prop
  caspase8Activation : Prop
  downstreamExecution : Prop

structure ExtrinsicApoptosisPathwayEvidence (E : ExtrinsicApoptosisPathwayPackage) where
  deathReceptorActivated : E.deathReceptorActivation
  discAssembled : E.discFormation
  caspase8Recruited : E.caspase8Recruitment
  caspase8Activated : E.caspase8Activation
  downstreamExecutionEngaged : E.downstreamExecution

def ExtrinsicApoptosisPathwayClosed (E : ExtrinsicApoptosisPathwayPackage) : Prop :=
  E.deathReceptorActivation ∧ E.discFormation ∧ E.caspase8Recruitment ∧
  E.caspase8Activation ∧ E.downstreamExecution

theorem extrinsic_apoptosis_pathway_closed_from_evidence (E : ExtrinsicApoptosisPathwayPackage)
    (Ev : ExtrinsicApoptosisPathwayEvidence E) : ExtrinsicApoptosisPathwayClosed E := by
  exact And.intro Ev.deathReceptorActivated
    (And.intro Ev.discAssembled
      (And.intro Ev.caspase8Recruited
        (And.intro Ev.caspase8Activated Ev.downstreamExecutionEngaged)))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse