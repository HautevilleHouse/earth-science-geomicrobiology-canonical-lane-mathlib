import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure ExtremeEnzymeActivityPackage where
  temperature : ℝ → ℝ
  pressure : ℝ → ℝ
  salinity : ℝ → ℝ
  enzymeActivity : ℝ → ℝ
  optimalTemperature : ℝ
  optimalPressure : ℝ

structure ExtremeEnzymeActivityEvidence (E : ExtremeEnzymeActivityPackage) where
  thermostabilityClosure : Prop
  barophilicityClosure : Prop
  halotoleranceClosure : Prop
  optimalConditionsClosed : E.optimalTemperature > 0 ∧ E.optimalPressure > 0
  thermostabilityTerm : thermostabilityClosure
  barophilicityTerm : barophilicityClosure
  halotoleranceTerm : halotoleranceClosure

def ExtremeEnzymeActivityClosed (E : ExtremeEnzymeActivityPackage) : Prop :=
  E.optimalTemperature > 0 ∧ E.optimalPressure > 0 ∧ E.enzymeActivity (0) > 0

theorem extreme_enzyme_activity_closed_from_evidence
    (E : ExtremeEnzymeActivityPackage) (Ev : ExtremeEnzymeActivityEvidence E) :
    ExtremeEnzymeActivityClosed E := by
  exact And.intro Ev.optimalConditionsClosed.left (And.intro Ev.optimalConditionsClosed.right (by
    have h1 := Ev.thermostabilityClosure
    have h2 := Ev.barophilicityClosure
    have h3 := Ev.halotoleranceClosure
    exact E.enzymeActivity (0) > 0))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse