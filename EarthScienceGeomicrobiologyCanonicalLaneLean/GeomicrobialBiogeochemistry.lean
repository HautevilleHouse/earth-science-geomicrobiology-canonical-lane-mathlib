import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure MicrobialBiogeochemistryPackage where
  carbonCycleFlux : Prop
  nitrogenFixationRate : Prop
  ironReductionPathway : Prop
  methanogenesisContribution : Prop

structure MicrobialBiogeochemistryEvidence (M : MicrobialBiogeochemistryPackage) where
  carbonCycleFluxClosed : M.carbonCycleFlux
  nitrogenFixationRateClosed : M.nitrogenFixationRate
  ironReductionPathwayClosed : M.ironReductionPathway
  methanogenesisContributionClosed : M.methanogenesisContribution

def MicrobialBiogeochemistryClosed (M : MicrobialBiogeochemistryPackage) : Prop :=
  M.carbonCycleFlux ∧ M.nitrogenFixationRate ∧ M.ironReductionPathway ∧ M.methanogenesisContribution

theorem microbial_biogeochemistry_closed_from_evidence (M : MicrobialBiogeochemistryPackage) (E : MicrobialBiogeochemistryEvidence M) :
    MicrobialBiogeochemistryClosed M := by
  exact And.intro E.carbonCycleFluxClosed (And.intro E.nitrogenFixationRateClosed (And.intro E.ironReductionPathwayClosed E.methanogenesisContributionClosed))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse
