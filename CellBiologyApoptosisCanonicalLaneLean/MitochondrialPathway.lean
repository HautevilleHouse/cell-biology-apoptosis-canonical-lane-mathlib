import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure MitochondrialPathwayPackage where
  cytochromeCRelease : Prop
  apoptosomeFormation : Prop
  caspaseActivation : Prop
  membranePermeabilization : Prop

structure MitochondrialPathwayEvidence (P : MitochondrialPathwayPackage) where
  cytochromeCReleaseClosed : P.cytochromeCRelease
  apoptosomeFormationClosed : P.apoptosomeFormation
  caspaseActivationClosed : P.caspaseActivation
  membranePermeabilizationClosed : P.membranePermeabilization

def MitochondrialPathwayClosed (P : MitochondrialPathwayPackage) : Prop :=
  P.cytochromeCRelease ∧ P.apoptosomeFormation ∧ P.caspaseActivation ∧ P.membranePermeabilization

theorem mitochondrial_pathway_closed_from_evidence
    (P : MitochondrialPathwayPackage) (E : MitochondrialPathwayEvidence P) :
    MitochondrialPathwayClosed P := by
  exact And.intro E.cytochromeCReleaseClosed
    (And.intro E.apoptosomeFormationClosed
      (And.intro E.caspaseActivationClosed E.membranePermeabilizationClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse