import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure DeathReceptorSignalingPackage where
  fasLigandBinding : Prop
  deathInducingSignalingComplexFormed : Prop
  caspase8Activated : Prop

structure DeathReceptorSignalingEvidence (D : DeathReceptorSignalingPackage) where
  fasLigandBindingClosed : D.fasLigandBinding
  deathInducingSignalingComplexFormedClosed : D.deathInducingSignalingComplexFormed
  caspase8ActivatedClosed : D.caspase8Activated

def DeathReceptorSignalingClosed (D : DeathReceptorSignalingPackage) : Prop :=
  D.fasLigandBinding ∧ D.deathInducingSignalingComplexFormed ∧ D.caspase8Activated

theorem death_receptor_signaling_closed_from_evidence (D : DeathReceptorSignalingPackage)
    (E : DeathReceptorSignalingEvidence D) : DeathReceptorSignalingClosed D := by
  exact And.intro E.fasLigandBindingClosed
    (And.intro E.deathInducingSignalingComplexFormedClosed E.caspase8ActivatedClosed)

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse