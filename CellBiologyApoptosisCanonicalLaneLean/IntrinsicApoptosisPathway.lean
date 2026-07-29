import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure IntrinsicApoptosisPathwayPackage where
  cellularStress : Prop
  mitochondrialPermeabilization : Prop
  cytochromeCRelease : Prop
  apoptosomeAssembly : Prop
  caspase9Activation : Prop
  executionCaspaseCascade : Prop

structure IntrinsicApoptosisPathwayEvidence (I : IntrinsicApoptosisPathwayPackage) where
  stressDetected : I.cellularStress
  mOMPOccurred : I.mitochondrialPermeabilization
  cytochromeCReleased : I.cytochromeCRelease
  apoptosomeAssembled : I.apoptosomeAssembly
  caspase9Activated : I.caspase9Activation
  executionCascadeEngaged : I.executionCaspaseCascade

def IntrinsicApoptosisPathwayClosed (I : IntrinsicApoptosisPathwayPackage) : Prop :=
  I.cellularStress ∧ I.mitochondrialPermeabilization ∧ I.cytochromeCRelease ∧
  I.apoptosomeAssembly ∧ I.caspase9Activation ∧ I.executionCaspaseCascade

theorem intrinsic_apoptosis_pathway_closed_from_evidence (I : IntrinsicApoptosisPathwayPackage)
    (E : IntrinsicApoptosisPathwayEvidence I) : IntrinsicApoptosisPathwayClosed I := by
  exact And.intro E.stressDetected
    (And.intro E.mOMPOccurred
      (And.intro E.cytochromeCReleased
        (And.intro E.apoptosomeAssembled
          (And.intro E.caspase9Activated E.executionCascadeEngaged))))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse