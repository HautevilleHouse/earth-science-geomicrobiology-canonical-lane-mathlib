import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure SubsurfaceBiosphereConnectivityPackage where
  deepBiosphereHabitat : Prop
  fluidRockMicrobeInteraction : Prop
  energySourceDiversity : Prop
  connectivitySurfaceSubsurface : Prop

structure SubsurfaceBiosphereConnectivityEvidence (S : SubsurfaceBiosphereConnectivityPackage) where
  deepBiosphereHabitatClosed : S.deepBiosphereHabitat
  fluidRockMicrobeInteractionClosed : S.fluidRockMicrobeInteraction
  energySourceDiversityClosed : S.energySourceDiversity
  connectivitySurfaceSubsurfaceClosed : S.connectivitySurfaceSubsurface

def SubsurfaceBiosphereConnectivityClosed (S : SubsurfaceBiosphereConnectivityPackage) : Prop :=
  S.deepBiosphereHabitat ∧ S.fluidRockMicrobeInteraction ∧ S.energySourceDiversity ∧ S.connectivitySurfaceSubsurface

theorem subsurface_biosphere_connectivity_closed_from_evidence (S : SubsurfaceBiosphereConnectivityPackage) (E : SubsurfaceBiosphereConnectivityEvidence S) :
    SubsurfaceBiosphereConnectivityClosed S := by
  exact And.intro E.deepBiosphereHabitatClosed (And.intro E.fluidRockMicrobeInteractionClosed (And.intro E.energySourceDiversityClosed E.connectivitySurfaceSubsurfaceClosed))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse
