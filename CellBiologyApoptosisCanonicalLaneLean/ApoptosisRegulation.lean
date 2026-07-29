import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure ApoptosisRegulationPackage where
  survivalSignals : Prop
  stressSignals : Prop
  p53Activation : Prop
  nfKappaBModulation : Prop

structure ApoptosisRegulationEvidence (P : ApoptosisRegulationPackage) where
  survivalSignalsClosed : P.survivalSignals
  stressSignalsClosed : P.stressSignals
  p53ActivationClosed : P.p53Activation
  nfKappaBModulationClosed : P.nfKappaBModulation

def ApoptosisRegulationClosed (P : ApoptosisRegulationPackage) : Prop :=
  P.survivalSignals ∧ P.stressSignals ∧ P.p53Activation ∧ P.nfKappaBModulation

theorem apoptosis_regulation_closed_from_evidence
    (P : ApoptosisRegulationPackage) (E : ApoptosisRegulationEvidence P) :
    ApoptosisRegulationClosed P := by
  exact And.intro E.survivalSignalsClosed
    (And.intro E.stressSignalsClosed
      (And.intro E.p53ActivationClosed E.nfKappaBModulationClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse