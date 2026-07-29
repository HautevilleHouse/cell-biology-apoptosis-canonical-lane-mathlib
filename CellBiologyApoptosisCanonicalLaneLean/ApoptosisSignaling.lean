import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure ExtrinsicApoptosisPackage where
  deathReceptorBinding : Prop
  discFormation : Prop
  caspase8Activation : Prop
  bidCleavage : Prop

structure ExtrinsicApoptosisEvidence (E : ExtrinsicApoptosisPackage) where
  deathReceptorBindingClosed : E.deathReceptorBinding
  discFormationClosed : E.discFormation
  caspase8ActivationClosed : E.caspase8Activation
  bidCleavageClosed : E.bidCleavage

def ExtrinsicApoptosisClosed (E : ExtrinsicApoptosisPackage) : Prop :=
  E.deathReceptorBinding ∧ E.discFormation ∧ E.caspase8Activation ∧ E.bidCleavage

theorem extrinsic_apoptosis_closed_from_evidence (E : ExtrinsicApoptosisPackage) (Ev : ExtrinsicApoptosisEvidence E) :
    ExtrinsicApoptosisClosed E := by
  exact And.intro Ev.deathReceptorBindingClosed
    (And.intro Ev.discFormationClosed
      (And.intro Ev.caspase8ActivationClosed Ev.bidCleavageClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse