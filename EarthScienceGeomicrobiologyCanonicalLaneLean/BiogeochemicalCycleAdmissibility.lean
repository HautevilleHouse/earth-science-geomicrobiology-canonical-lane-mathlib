import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure GeomicrobioAdmissibleClass where
  object : GeomicrobioAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : GeomicrobioAdmissibleClass) : Prop :=
  GeomicrobioWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse