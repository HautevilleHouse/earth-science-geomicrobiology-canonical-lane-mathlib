import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure ExtremeEnvironmentsPackage where
  environmentType : Type
  extremophilePopulation : Type
  extremeParameter : Type
  adaptationMechanism : Type
  growthUnderExtreme : Prop
  metabolicFlexibility : Prop
  stressResilience : Prop
  ecologicalNiche : Prop

structure ExtremeEnvironmentsEvidence (E : ExtremeEnvironmentsPackage) where
  growthUnderExtremeClosed : E.growthUnderExtreme
  metabolicFlexibilityClosed : E.metabolicFlexibility
  stressResilienceClosed : E.stressResilience
  ecologicalNicheClosed : E.ecologicalNiche

def ExtremeEnvironmentsClosed (E : ExtremeEnvironmentsPackage) : Prop :=
  E.growthUnderExtreme ∧ E.metabolicFlexibility ∧ E.stressResilience ∧ E.ecologicalNiche

theorem extreme_environments_closed_from_evidence (E : ExtremeEnvironmentsPackage)
    (Evidence : ExtremeEnvironmentsEvidence E) : ExtremeEnvironmentsClosed E := by
  exact And.intro Evidence.growthUnderExtremeClosed (And.intro Evidence.metabolicFlexibilityClosed (And.intro Evidence.stressResilienceClosed Evidence.ecologicalNicheClosed))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse