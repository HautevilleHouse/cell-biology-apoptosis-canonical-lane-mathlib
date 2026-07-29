import CellBiologyApoptosisCanonicalLaneLean.SystemsBiology

/-!
# Apoptosis Endpoint Classification Package
-/

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure ApoptosisEndpointClassificationPackage
    {S : ApoptosisSystemsBiologyPackage} where
  cellDeathExecuted : Prop
  apoptoticBodyFormation : Prop
  phagocyticClearance : Prop
  endpointMatchesPhysiologicalApoptosis : Prop

structure ApoptosisEndpointClassificationEvidence
    {S : ApoptosisSystemsBiologyPackage}
    (E : ApoptosisEndpointClassificationPackage S) where
  cellDeathExecutedClosed : E.cellDeathExecuted
  apoptoticBodyFormationClosed : E.apoptoticBodyFormation
  phagocyticClearanceClosed : E.phagocyticClearance
  endpointMatchesPhysiologicalApoptosisClosed : E.endpointMatchesPhysiologicalApoptosis

def ApoptosisEndpointClassificationClosed
    {S : ApoptosisSystemsBiologyPackage}
    (E : ApoptosisEndpointClassificationPackage S) : Prop :=
  E.cellDeathExecuted ∧ E.apoptoticBodyFormation ∧
  E.phagocyticClearance ∧ E.endpointMatchesPhysiologicalApoptosis

theorem apoptosis_endpoint_classification_closed_from_evidence
    {S : ApoptosisSystemsBiologyPackage}
    (E : ApoptosisEndpointClassificationPackage S)
    (Ev : ApoptosisEndpointClassificationEvidence E) :
    ApoptosisEndpointClassificationClosed E := by
  exact And.intro Ev.cellDeathExecutedClosed
    (And.intro Ev.apoptoticBodyFormationClosed
      (And.intro Ev.phagocyticClearanceClosed
        Ev.endpointMatchesPhysiologicalApoptosisClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse