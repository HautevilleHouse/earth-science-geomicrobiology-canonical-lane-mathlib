import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

def ConstrainedGeomicrobioClosure (A : GeomicrobioAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geomicrobio_endgame (A : GeomicrobioAdmissibleClass) :
    ConstrainedGeomicrobioClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse