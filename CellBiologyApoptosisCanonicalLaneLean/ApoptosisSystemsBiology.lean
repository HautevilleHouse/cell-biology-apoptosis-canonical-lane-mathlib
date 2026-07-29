import CellBiologyApoptosisCanonicalLaneLean.SignalingNetwork

/-!
# Apoptosis Systems Biology Package
-/

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure ApoptosisSystemsBiologyPackage where
  regulatoryNetworkModel : Prop
  stochasticGeneExpression : Prop
  populationHeterogeneity : Prop
  spatialOrganization : Prop
  crossTalkWithSurvivalSignals : Prop

structure ApoptosisSystemsBiologyEvidence (S : ApoptosisSystemsBiologyPackage) where
  regulatoryNetworkModelClosed : S.regulatoryNetworkModel
  stochasticGeneExpressionClosed : S.stochasticGeneExpression
  populationHeterogeneityClosed : S.populationHeterogeneity
  spatialOrganizationClosed : S.spatialOrganization
  crossTalkWithSurvivalSignalsClosed : S.crossTalkWithSurvivalSignals

def ApoptosisSystemsBiologyClosed (S : ApoptosisSystemsBiologyPackage) : Prop :=
  S.regulatoryNetworkModel ∧ S.stochasticGeneExpression ∧
  S.populationHeterogeneity ∧ S.spatialOrganization ∧
  S.crossTalkWithSurvivalSignals

theorem apoptosis_systems_biology_closed_from_evidence
    (S : ApoptosisSystemsBiologyPackage) (E : ApoptosisSystemsBiologyEvidence S) :
    ApoptosisSystemsBiologyClosed S := by
  exact And.intro E.regulatoryNetworkModelClosed
    (And.intro E.stochasticGeneExpressionClosed
      (And.intro E.populationHeterogeneityClosed
        (And.intro E.spatialOrganizationClosed
          E.crossTalkWithSurvivalSignalsClosed)))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse