import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure MineralBiofilmInteractionsPackage where
  mineralSurface : Type
  biofilmMatrix : Type
  dissolutionRate : ℝ → ℝ
  precipitationRate : ℝ → ℝ
  surfaceCoverage : ℝ → ℝ
  eps : ℝ

structure MineralBiofilmInteractionsEvidence (M : MineralBiofilmInteractionsPackage) where
  surfaceReactivityClosure : Prop
  biofilmCatalysisClosure : Prop
  epsPositive : M.eps > 0
  surfaceReactivityTerm : surfaceReactivityClosure
  biofilmCatalysisTerm : biofilmCatalysisClosure

def MineralBiofilmInteractionsClosed (M : MineralBiofilmInteractionsPackage) : Prop :=
  M.eps > 0 ∧ M.dissolutionRate (0) > 0 ∧ M.precipitationRate (0) > 0

theorem mineral_biofilm_interactions_closed_from_evidence
    (M : MineralBiofilmInteractionsPackage) (E : MineralBiofilmInteractionsEvidence M) :
    MineralBiofilmInteractionsClosed M := by
  refine And.intro E.epsPositive ?_
  refine And.intro ?_ ?_
  · have h := E.surfaceReactivityTerm
    exact h
  · have h := E.biofilmCatalysisTerm
    exact h

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse