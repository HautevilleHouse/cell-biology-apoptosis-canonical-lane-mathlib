import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure ApoptosisSignalPathwayPackage where
  initiatorCaspaseActivation : Prop
  mitochondrialOuterMembranePermeabilization : Prop
  cytochromeCRelease : Prop
  apoptosomeFormation : Prop
  executionerCaspaseActivation : Prop

structure ApoptosisSignalPathwayEvidence (P : ApoptosisSignalPathwayPackage) where
  initiatorCaspaseActivationClosed : P.initiatorCaspaseActivation
  mitochondrialOuterMembranePermeabilizationClosed : P.mitochondrialOuterMembranePermeabilization
  cytochromeCReleaseClosed : P.cytochromeCRelease
  apoptosomeFormationClosed : P.apoptosomeFormation
  executionerCaspaseActivationClosed : P.executionerCaspaseActivation

def ApoptosisSignalPathwayClosed (P : ApoptosisSignalPathwayPackage) : Prop :=
  P.initiatorCaspaseActivation ∧ P.mitochondrialOuterMembranePermeabilization ∧
  P.cytochromeCRelease ∧ P.apoptosomeFormation ∧ P.executionerCaspaseActivation

theorem apoptosis_signal_pathway_closed_from_evidence (P : ApoptosisSignalPathwayPackage)
    (E : ApoptosisSignalPathwayEvidence P) : ApoptosisSignalPathwayClosed P := by
  exact And.intro E.initiatorCaspaseActivationClosed
    (And.intro E.mitochondrialOuterMembranePermeabilizationClosed
      (And.intro E.cytochromeCReleaseClosed
        (And.intro E.apoptosomeFormationClosed E.executionerCaspaseActivationClosed)))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse