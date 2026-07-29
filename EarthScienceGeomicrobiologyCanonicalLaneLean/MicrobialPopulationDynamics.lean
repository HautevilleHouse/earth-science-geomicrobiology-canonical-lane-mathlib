import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure MicrobialPopulationDynamicsPackage where
  growthModel : Prop
  deathModel : Prop
  competition : Prop
  symbiosis : Prop
  predation : Prop
  nutrientLimitation : Prop
  spatialStructure : Prop
  stochasticFluctuations : Prop
  evolutionaryAdaptation : Prop

structure MicrobialPopulationDynamicsEvidence
    (M : MicrobialPopulationDynamicsPackage) where
  growthModelClosed : M.growthModel
  deathModelClosed : M.deathModel
  competitionClosed : M.competition
  symbiosisClosed : M.symbiosis
  predationClosed : M.predation
  nutrientLimitationClosed : M.nutrientLimitation
  spatialStructureClosed : M.spatialStructure
  stochasticFluctuationsClosed : M.stochasticFluctuations
  evolutionaryAdaptationClosed : M.evolutionaryAdaptation

def MicrobialPopulationDynamicsClosed
    (M : MicrobialPopulationDynamicsPackage) : Prop :=
  M.growthModel ∧ M.deathModel ∧ M.competition ∧ M.symbiosis ∧
  M.predation ∧ M.nutrientLimitation ∧ M.spatialStructure ∧
  M.stochasticFluctuations ∧ M.evolutionaryAdaptation

theorem microbial_population_dynamics_closed_from_evidence
    (M : MicrobialPopulationDynamicsPackage)
    (E : MicrobialPopulationDynamicsEvidence M) :
    MicrobialPopulationDynamicsClosed M := by
  exact And.intro E.growthModelClosed
    (And.intro E.deathModelClosed
      (And.intro E.competitionClosed
        (And.intro E.symbiosisClosed
          (And.intro E.predationClosed
            (And.intro E.nutrientLimitationClosed
              (And.intro E.spatialStructureClosed
                (And.intro E.stochasticFluctuationsClosed
                  E.evolutionaryAdaptationClosed)))))))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse