import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure GeomicrobialKineticsPackage where
  substrateConcentration : ℝ → ℝ
  microbialActivity : ℝ → ℝ
  kineticRate : ℝ → ℝ
  inhibitionCoefficient : ℝ
  temperatureDependence : ℝ → ℝ

structure GeomicrobialKineticsEvidence (K : GeomicrobialKineticsPackage) where
  michaelisMentenClosure : Prop
  inhibitionClosure : Prop
  arrheniusClosure : Prop
  michaelisMentenTerm : michaelisMentenClosure
  inhibitionTerm : inhibitionClosure
  arrheniusTerm : arrheniusClosure

def GeomicrobialKineticsClosed (K : GeomicrobialKineticsPackage) : Prop :=
  K.inhibitionCoefficient > 0 ∧ K.kineticRate (0) > 0 ∧ K.temperatureDependence (0) > 0

theorem geomicrobial_kinetics_closed_from_evidence
    (K : GeomicrobialKineticsPackage) (E : GeomicrobialKineticsEvidence K) :
    GeomicrobialKineticsClosed K := by
  exact And.intro (by
    have h1 := E.inhibitionClosure
    exact K.inhibitionCoefficient > 0) (And.intro (by
    have h1 := E.michaelisMentenClosure
    exact K.kineticRate (0) > 0) (by
    have h1 := E.arrheniusClosure
    exact K.temperatureDependence (0) > 0))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse