import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure RedoxReactionNetwork where
  electronDonors : List String
  electronAcceptors : List String
  reactionRates : String -> String -> Float
  thermodynamicFeasibility : Prop
  massBalanceSatisfied : Prop
  kineticModelExists : Prop
  donorsListClosed : electronDonors ≠ []
  acceptorsListClosed : electronAcceptors ≠ []
  reactionRatesClosed : ∀ d ∈ electronDonors, ∀ a ∈ electronAcceptors, reactionRates d a > 0
  thermodynamicFeasibilityTerm : thermodynamicFeasibility
  massBalanceTerm : massBalanceSatisfied
  kineticModelTerm : kineticModelExists

structure RedoxReactionEvidence (R : RedoxReactionNetwork) where
  thermodynamicFeasibilityClosed : R.thermodynamicFeasibility
  massBalanceClosed : R.massBalanceSatisfied
  kineticModelClosed : R.kineticModelExists

def RedoxReactionClosed (R : RedoxReactionNetwork) : Prop :=
  R.thermodynamicFeasibility ∧ R.massBalanceSatisfied ∧ R.kineticModelExists

theorem redox_reaction_closed_from_evidence (R : RedoxReactionNetwork) (E : RedoxReactionEvidence R) :
    RedoxReactionClosed R := by
  exact And.intro E.thermodynamicFeasibilityClosed (And.intro E.massBalanceClosed E.kineticModelClosed)

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse