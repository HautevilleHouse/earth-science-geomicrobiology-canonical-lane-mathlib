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
  exact And.intro E.carryingCapacityBounded (by
    have h1 := E.logisticGrowthTerm
    have h2 := E.nutrientLimitationTerm
    exact And.intro (by
      have : P.growthRate (0) > 0 := by
        sorry
      exact this) (by
      have : P.deathRate (0) > 0 := by
        sorry
      exact this))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse