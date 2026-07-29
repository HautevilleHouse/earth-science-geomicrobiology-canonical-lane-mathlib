import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure MicrobialCommunityModel where
  taxa : List String
  metabolicInteractions : String -> String -> Float
  environmentalGradients : String -> Float
  communityStability : Prop
  interactionMatrixSymmetric : Prop
  interactionTotals : ∀ t : String, taxes.sum (fun o => metabolicInteractions t o) = 0
  gradientContinuity : ∀ f : String, Continuous (environmentalGradients f)
  communityStabilityTerm : communityStability

def SystemsBiologyClosed (M : MicrobialCommunityModel) : Prop :=
  M.communityStability ∧ M.interactionMatrixSymmetric ∧
  (∀ t : String, taxes.sum (fun o => metabolicInteractions t o) = 0) ∧
  (∀ f : String, Continuous (environmentalGradients f))

theorem systems_biology_closed_from_evidence (M : MicrobialCommunityModel) (E : SystemsBiologyEvidence M) :
    SystemsBiologyClosed M := by
  exact And.intro E.communityStabilityClosed (And.intro E.interactionMatrixSymmetricClosed
    (And.intro E.interactionTotalsClosed E.gradientContinuityClosed))

structure SystemsBiologyEvidence (M : MicrobialCommunityModel) where
  communityStabilityClosed : M.communityStability
  interactionMatrixSymmetricClosed : M.interactionMatrixSymmetric
  interactionTotalsClosed : ∀ t : String, taxes.sum (fun o => M.metabolicInteractions t o) = 0
  gradientContinuityClosed : ∀ f : String, Continuous (M.environmentalGradients f)

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse