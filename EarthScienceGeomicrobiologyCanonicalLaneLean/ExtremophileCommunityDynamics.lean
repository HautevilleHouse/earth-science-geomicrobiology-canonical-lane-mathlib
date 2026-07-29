import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure ExtremophileCommunityDynamicsPackage where
  highTemperatureMetabolism : Prop
  highPressureAdaptation : Prop
  lowNutrientSurvival : Prop
  radiationResistance : Prop

structure ExtremophileCommunityDynamicsEvidence (E : ExtremophileCommunityDynamicsPackage) where
  highTemperatureMetabolismClosed : E.highTemperatureMetabolism
  highPressureAdaptationClosed : E.highPressureAdaptation
  lowNutrientSurvivalClosed : E.lowNutrientSurvival
  radiationResistanceClosed : E.radiationResistance

def ExtremophileCommunityDynamicsClosed (E : ExtremophileCommunityDynamicsPackage) : Prop :=
  E.highTemperatureMetabolism ∧ E.highPressureAdaptation ∧ E.lowNutrientSurvival ∧ E.radiationResistance

theorem extremophile_community_dynamics_closed_from_evidence (E : ExtremophileCommunityDynamicsPackage) (Ev : ExtremophileCommunityDynamicsEvidence E) :
    ExtremophileCommunityDynamicsClosed E := by
  exact And.intro Ev.highTemperatureMetabolismClosed (And.intro Ev.highPressureAdaptationClosed (And.intro Ev.lowNutrientSurvivalClosed Ev.radiationResistanceClosed))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse
