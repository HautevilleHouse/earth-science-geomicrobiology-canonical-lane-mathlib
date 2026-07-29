import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure SubsurfaceTransportModelPackage where
  porosity : ℝ → ℝ
  permeability : ℝ → ℝ
  soluteConcentration : ℝ → ℝ
  flowVelocity : ℝ → ℝ
  dispersionCoefficient : ℝ
  retardationFactor : ℝ

structure SubsurfaceTransportModelEvidence (S : SubsurfaceTransportModelPackage) where
  advectionDispersionClosure : Prop
  sorptionClosure : Prop
  porosityPositive : ∀ x, S.porosity x > 0
  permeabilityPositive : ∀ x, S.permeability x > 0
  advectionDispersionTerm : advectionDispersionClosure
  sorptionTerm : sorptionClosure

def SubsurfaceTransportModelClosed (S : SubsurfaceTransportModelPackage) : Prop :=
  (∀ x, S.porosity x > 0) ∧ (∀ x, S.permeability x > 0) ∧ S.dispersionCoefficient > 0 ∧ S.retardationFactor ≥ 1

theorem subsurface_transport_model_closed_from_evidence
    (S : SubsurfaceTransportModelPackage) (E : SubsurfaceTransportModelEvidence S) :
    SubsurfaceTransportModelClosed S := by
  exact And.intro E.porosityPositive (And.intro E.permeabilityPositive (And.intro (by
    have h1 := E.advectionDispersionClosure
    exact S.dispersionCoefficient > 0) (by
    have h1 := E.sorptionClosure
    exact S.retardationFactor ≥ 1)))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse