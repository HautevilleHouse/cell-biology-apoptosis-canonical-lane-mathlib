import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure ApoptosisSignalingPackage where
  extrinsicPathwayActivated : Prop
  intrinsicPathwayActivated : Prop
  caspaseCascadeEngaged : Prop
  mitochondrialOuterMembranePermeabilized : Prop

structure ApoptosisSignalingEvidence (A : ApoptosisSignalingPackage) where
  extrinsicPathwayActivatedClosed : A.extrinsicPathwayActivated
  intrinsicPathwayActivatedClosed : A.intrinsicPathwayActivated
  caspaseCascadeEngagedClosed : A.caspaseCascadeEngaged
  mitochondrialOuterMembranePermeabilizedClosed : A.mitochondrialOuterMembranePermeabilized

def ApoptosisSignalingClosed (A : ApoptosisSignalingPackage) : Prop :=
  A.extrinsicPathwayActivated ∧ A.intrinsicPathwayActivated ∧
  A.caspaseCascadeEngaged ∧ A.mitochondrialOuterMembranePermeabilized

theorem apoptosis_signaling_closed_from_evidence (A : ApoptosisSignalingPackage)
    (E : ApoptosisSignalingEvidence A) : ApoptosisSignalingClosed A := by
  exact And.intro E.extrinsicPathwayActivatedClosed
    (And.intro E.intrinsicPathwayActivatedClosed
      (And.intro E.caspaseCascadeEngagedClosed E.mitochondrialOuterMembranePermeabilizedClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse