import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure EvolutionaryGame where
  strategies : Nat
  payoffMatrix : Matrix Float strategies strategies
  replicatorEquation : Prop
  equilibriumPoint : Vector Float strategies
  stabilityCondition : Prop
  payoffMatrixClosed : Prop
  replicatorEquationClosed : replicatorEquation
  equilibriumClosed : equilibriumPoint.sum = 1.0
  stabilityClosed : stabilityCondition
  equilibriumTerm : equilibriumPoint.sum = 1.0
  stabilityTerm : stabilityCondition

structure GameTheoryEvidence (G : EvolutionaryGame) where
  replicatorEquationClosed : G.replicatorEquation
  equilibriumClosed : G.equilibriumPoint.sum = 1.0
  stabilityClosed : G.stabilityCondition

def GameTheoryClosed (G : EvolutionaryGame) : Prop :=
  G.replicatorEquation ∧ (G.equilibriumPoint.sum = 1.0) ∧ G.stabilityCondition

theorem game_theory_closed_from_evidence (G : EvolutionaryGame) (E : GameTheoryEvidence G) :
    GameTheoryClosed G := by
  exact And.intro E.replicatorEquationClosed (And.intro E.equilibriumClosed E.stabilityClosed)

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse