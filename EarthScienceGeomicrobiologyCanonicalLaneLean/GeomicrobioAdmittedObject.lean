import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure GeomicrobioSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeomicrobioAdmittedObject where
  space : GeomicrobioSpace
  closedBiogeochemicalCycle : Prop
  microbiallyInfluenced : Prop
  endpointModel : Type
  endpointTopology : TopologicalSpace endpointModel
  equilibriumAttained : Prop
  conclusion : equilibriumAttained

structure GeomicrobioEndgameState where
  object : GeomicrobioAdmittedObject

def GeomicrobioWitnessClosed (O : GeomicrobioAdmittedObject) : Prop :=
  O.equilibriumAttained

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse