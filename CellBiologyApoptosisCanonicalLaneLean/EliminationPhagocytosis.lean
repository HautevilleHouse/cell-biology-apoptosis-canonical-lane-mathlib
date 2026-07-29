import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyApoptosisCanonicalLaneLean

structure EliminationPhagocytosisPackage where
  findMeSignal : Prop
  eatMeSignal : Prop
  phagocyteEngulfment : Prop
  antiInflammatoryResponse : Prop

structure EliminationPhagocytosisEvidence (P : EliminationPhagocytosisPackage) where
  findMeSignalClosed : P.findMeSignal
  eatMeSignalClosed : P.eatMeSignal
  phagocyteEngulfmentClosed : P.phagocyteEngulfment
  antiInflammatoryResponseClosed : P.antiInflammatoryResponse

def EliminationPhagocytosisClosed (P : EliminationPhagocytosisPackage) : Prop :=
  P.findMeSignal ∧ P.eatMeSignal ∧ P.phagocyteEngulfment ∧ P.antiInflammatoryResponse

theorem elimination_phagocytosis_closed_from_evidence
    (P : EliminationPhagocytosisPackage) (E : EliminationPhagocytosisEvidence P) :
    EliminationPhagocytosisClosed P := by
  exact And.intro E.findMeSignalClosed
    (And.intro E.eatMeSignalClosed
      (And.intro E.phagocyteEngulfmentClosed E.antiInflammatoryResponseClosed))

end CellBiologyApoptosisCanonicalLaneLean
end HautevilleHouse