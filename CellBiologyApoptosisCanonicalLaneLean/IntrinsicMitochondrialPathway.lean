import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure IntrinsicMitochondrialPathwayPackage where
  cellularStress : Prop
  bcl2FamilyRegulation : Prop
  mOMP : Prop
  cytochromeCRelease : Prop
  apoptosomeAssembly : Prop
  caspase9Activation : Prop

structure IntrinsicMitochondrialPathwayEvidence (I : IntrinsicMitochondrialPathwayPackage) where
  cellularStressClosed : I.cellularStress
  bcl2FamilyRegulationClosed : I.bcl2FamilyRegulation
  mOMPClosed : I.mOMP
  cytochromeCReleaseClosed : I.cytochromeCRelease
  apoptosomeAssemblyClosed : I.apoptosomeAssembly
  caspase9ActivationClosed : I.caspase9Activation

def IntrinsicMitochondrialPathwayClosed (I : IntrinsicMitochondrialPathwayPackage) : Prop :=
  I.cellularStress ∧ I.bcl2FamilyRegulation ∧
  I.mOMP ∧ I.cytochromeCRelease ∧ I.apoptosomeAssembly ∧ I.caspase9Activation

theorem intrinsic_mitochondrial_pathway_closed_from_evidence
    (I : IntrinsicMitochondrialPathwayPackage)
    (E : IntrinsicMitochondrialPathwayEvidence I) : IntrinsicMitochondrialPathwayClosed I := by
  exact And.intro E.cellularStressClosed
    (And.intro E.bcl2FamilyRegulationClosed
      (And.intro E.mOMPClosed
        (And.intro E.cytochromeCReleaseClosed
          (And.intro E.apoptosomeAssemblyClosed E.caspase9ActivationClosed))))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse