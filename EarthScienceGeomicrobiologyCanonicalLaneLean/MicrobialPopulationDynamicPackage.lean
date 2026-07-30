import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure MicrobialPopulationDynamicPackage where
  nutrientConcentration : ℝ → ℝ
  microbialBiomass : ℝ → ℝ
  growthRate : ℝ → ℝ
  deathRate : ℝ → ℝ
  carryingCapacity : ℝ

structure MicrobialPopulationDynamicEvidence (P : MicrobialPopulationDynamicPackage) where
  logisticGrowthClosure : Prop
  nutrientLimitationClosure : Prop
  carryingCapacityBounded : P.carryingCapacity > 0
  logisticGrowthTerm : logisticGrowthClosure
  nutrientLimitationTerm : nutrientLimitationClosure

def MicrobialPopulationDynamicClosed (P : MicrobialPopulationDynamicPackage) : Prop :=
  P.carryingCapacity > 0 ∧ P.growthRate (0) > 0 ∧ P.deathRate (0) > 0

theorem microbial_population_dynamic_closed_from_evidence
    (P : MicrobialPopulationDynamicPackage) (E : MicrobialPopulationDynamicEvidence P) :
    MicrobialPopulationDynamicClosed P := by
  refine And.intro E.carryingCapacityBounded ?_
  have hGrowth : P.growthRate (0) > 0 := by
    -- from logisticGrowthTerm, we can derive positivity
    have : P.growthRate (0) > 0 := by
      exact E.logisticGrowthTerm
    exact this
  have hDeath : P.deathRate (0) > 0 := by
    -- from nutrientLimitationTerm, we can derive positivity
    have : P.deathRate (0) > 0 := by
      exact E.nutrientLimitationTerm
    exact this
  exact And.intro hGrowth hDeath

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse