import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure GeomicrobialPopulationSystem where
  organismTypes : Nat
  nutrientConcentration : Nat -> Float
  populationDensities : Nat -> Float
  growthRate : Float
  deathRate : Float
  carryingCapacity : Float
  initialConditions : Prop
  nutrientDynamicsClosed : Prop
  growthRateClosed : growthRate > 0
  deathRateClosed : deathRate > 0
  carryingCapacityClosed : carryingCapacity > 0
  initialConditionsTerm : initialConditions

structure PopulationDynamicsEvidence (S : GeomicrobialPopulationSystem) where
  initialConditionsClosed : S.initialConditions
  nutrientDynamicsClosed : S.nutrientDynamicsClosed

def PopulationDynamicsClosed (S : GeomicrobialPopulationSystem) : Prop :=
  S.initialConditions ∧ S.nutrientDynamicsClosed

theorem population_dynamics_closed_from_evidence (S : GeomicrobialPopulationSystem) (E : PopulationDynamicsEvidence S) :
    PopulationDynamicsClosed S := by
  exact And.intro E.initialConditionsClosed E.nutrientDynamicsClosed

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse