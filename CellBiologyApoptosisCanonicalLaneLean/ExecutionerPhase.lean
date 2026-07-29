import CellBiologyApoptosisCanonicalLaneLean.DeathReceptorPathway

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure ExecutionerPhasePackage (A : AdmissibleClass) where
  dnaseActivation : Prop
  chromatinCondensation : Prop
  cellShrinkage : Prop
  phagocytosisSignals : Prop

structure ExecutionerPhaseEvidence {A : AdmissibleClass} (E : ExecutionerPhasePackage A) where
  dnaseActivationClosed : E.dnaseActivation
  chromatinCondensationClosed : E.chromatinCondensation
  cellShrinkageClosed : E.cellShrinkage
  phagocytosisSignalsClosed : E.phagocytosisSignals

def ExecutionerPhaseClosed {A : AdmissibleClass} (E : ExecutionerPhasePackage A) : Prop :=
  E.dnaseActivation ∧ E.chromatinCondensation ∧ E.cellShrinkage ∧ E.phagocytosisSignals

theorem executioner_phase_closed_from_evidence {A : AdmissibleClass} (E : ExecutionerPhasePackage A)
    (Epkg : ExecutionerPhaseEvidence E) : ExecutionerPhaseClosed E := by
  exact And.intro Epkg.dnaseActivationClosed (And.intro Epkg.chromatinCondensationClosed
    (And.intro Epkg.cellShrinkageClosed Epkg.phagocytosisSignalsClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse