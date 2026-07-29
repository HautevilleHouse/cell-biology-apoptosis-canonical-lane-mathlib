import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure ApoptosisSignalingPackage where
  deathReceptorActivation : Prop
  mitochondrialOuterPermeabilization : Prop
  caspaseCascade : Prop
  phagocyticClearance : Prop

structure ApoptosisSignalingEvidence (A : ApoptosisSignalingPackage) where
  deathReceptorActivationClosed : A.deathReceptorActivation
  mitochondrialOuterPermeabilizationClosed : A.mitochondrialOuterPermeabilization
  caspaseCascadeClosed : A.caspaseCascade
  phagocyticClearanceClosed : A.phagocyticClearance

def ApoptosisSignalingClosed (A : ApoptosisSignalingPackage) : Prop :=
  A.deathReceptorActivation ∧ A.mitochondrialOuterPermeabilization ∧
  A.caspaseCascade ∧ A.phagocyticClearance

theorem apoptosis_signaling_closed_from_evidence
    (A : ApoptosisSignalingPackage) (E : ApoptosisSignalingEvidence A) :
    ApoptosisSignalingClosed A := by
  exact And.intro E.deathReceptorActivationClosed
    (And.intro E.mitochondrialOuterPermeabilizationClosed
      (And.intro E.caspaseCascadeClosed E.phagocyticClearanceClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse
