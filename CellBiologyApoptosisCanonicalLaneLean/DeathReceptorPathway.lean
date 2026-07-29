import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure DeathReceptorPathwayPackage where
  ligandBinding : Prop
  discFormation : Prop
  caspaseActivation : Prop
  signalPropagation : Prop

structure DeathReceptorPathwayEvidence (P : DeathReceptorPathwayPackage) where
  ligandBindingClosed : P.ligandBinding
  discFormationClosed : P.discFormation
  caspaseActivationClosed : P.caspaseActivation
  signalPropagationClosed : P.signalPropagation

def DeathReceptorPathwayClosed (P : DeathReceptorPathwayPackage) : Prop :=
  P.ligandBinding ∧ P.discFormation ∧ P.caspaseActivation ∧ P.signalPropagation

theorem death_receptor_pathway_closed_from_evidence
    (P : DeathReceptorPathwayPackage) (E : DeathReceptorPathwayEvidence P) :
    DeathReceptorPathwayClosed P := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.discFormationClosed
      (And.intro E.caspaseActivationClosed E.signalPropagationClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse