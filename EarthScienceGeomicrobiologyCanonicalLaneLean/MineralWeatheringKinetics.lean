import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure MineralWeatheringSystem where
  mineralTypes : List String
  reactiveSurfaceArea : Float
  dissolutionRate : Float -> Float
  microbialCatalysisFactor : Float
  rateLawFormulated : Prop
  surfaceAreaPositive : reactiveSurfaceArea > 0
  dissolutionRatePositive : ∀ pH : Float, dissolutionRate pH > 0
  catalysisFactorPositive : microbialCatalysisFactor > 0
  rateLawTerm : rateLawFormulated

structure WeatheringEvidence (M : MineralWeatheringSystem) where
  rateLawClosed : M.rateLawFormulated
  catalysisFactorClosed : M.microbialCatalysisFactor > 0

def WeatheringClosed (M : MineralWeatheringSystem) : Prop :=
  M.rateLawFormulated ∧ M.microbialCatalysisFactor > 0

theorem weathering_closed_from_evidence (M : MineralWeatheringSystem) (E : WeatheringEvidence M) :
    WeatheringClosed M := by
  exact And.intro E.rateLawClosed E.catalysisFactorClosed

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse