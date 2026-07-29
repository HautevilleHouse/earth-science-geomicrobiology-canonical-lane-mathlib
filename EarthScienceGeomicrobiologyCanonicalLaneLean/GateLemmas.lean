import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

def gateClosed (A : GeomicrobioAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GeomicrobioAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse