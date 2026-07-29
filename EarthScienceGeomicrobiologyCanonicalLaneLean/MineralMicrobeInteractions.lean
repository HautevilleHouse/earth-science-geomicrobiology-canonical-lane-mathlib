import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure MineralMicrobeInteractionPackage where
  bioweatheringRate : Prop
  mineralDissolutionMechanism : Prop
  secondaryMineralPrecipitation : Prop
  biofilmFormationOnSurface : Prop

structure MineralMicrobeInteractionEvidence (M : MineralMicrobeInteractionPackage) where
  bioweatheringRateClosed : M.bioweatheringRate
  mineralDissolutionMechanismClosed : M.mineralDissolutionMechanism
  secondaryMineralPrecipitationClosed : M.secondaryMineralPrecipitation
  biofilmFormationOnSurfaceClosed : M.biofilmFormationOnSurface

def MineralMicrobeInteractionClosed (M : MineralMicrobeInteractionPackage) : Prop :=
  M.bioweatheringRate ∧ M.mineralDissolutionMechanism ∧ M.secondaryMineralPrecipitation ∧ M.biofilmFormationOnSurface

theorem mineral_microbe_interaction_closed_from_evidence (M : MineralMicrobeInteractionPackage) (E : MineralMicrobeInteractionEvidence M) :
    MineralMicrobeInteractionClosed M := by
  exact And.intro E.bioweatheringRateClosed (And.intro E.mineralDissolutionMechanismClosed (And.intro E.secondaryMineralPrecipitationClosed E.biofilmFormationOnSurfaceClosed))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse
