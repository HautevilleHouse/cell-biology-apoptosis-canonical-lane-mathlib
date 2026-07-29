import HautevilleHouse.CellBiologyApoptosisCanonicalLaneLean.CaspaseActivation

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure Bcl2FamilyPackage {S : ApoptosisSignalingPackage} {C : CaspaseActivationPackage S} where
  proApoptoticMembers : Prop
  antiApoptoticMembers : Prop
  heterodimerization : Prop
  mOMPControl : Prop

structure Bcl2FamilyEvidence {S : ApoptosisSignalingPackage} {C : CaspaseActivationPackage S} (B : Bcl2FamilyPackage S C) where
  proApoptoticMembersClosed : B.proApoptoticMembers
  antiApoptoticMembersClosed : B.antiApoptoticMembers
  heterodimerizationClosed : B.heterodimerization
  mOMPControlClosed : B.mOMPControl

def Bcl2FamilyClosed {S : ApoptosisSignalingPackage} {C : CaspaseActivationPackage S} (B : Bcl2FamilyPackage S C) : Prop :=
  B.proApoptoticMembers ∧ B.antiApoptoticMembers ∧ B.heterodimerization ∧ B.mOMPControl

theorem bcl2_family_closed_from_evidence {S : ApoptosisSignalingPackage} {C : CaspaseActivationPackage S} (B : Bcl2FamilyPackage S C) (E : Bcl2FamilyEvidence B) :
    Bcl2FamilyClosed B := by
  exact And.intro E.proApoptoticMembersClosed
    (And.intro E.antiApoptoticMembersClosed
      (And.intro E.heterodimerizationClosed E.mOMPControlClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse