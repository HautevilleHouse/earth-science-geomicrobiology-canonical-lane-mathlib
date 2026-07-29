import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure GeomicrobiologyAdmittedObject where
  environment : Type
  populationDynamics : Prop
  microbialCommunity : Prop
  conclusion : populationDynamics ∧ microbialCommunity

def GeomicrobiologyWitnessClosed (O : GeomicrobiologyAdmittedObject) : Prop :=
  O.populationDynamics ∧ O.microbialCommunity

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse