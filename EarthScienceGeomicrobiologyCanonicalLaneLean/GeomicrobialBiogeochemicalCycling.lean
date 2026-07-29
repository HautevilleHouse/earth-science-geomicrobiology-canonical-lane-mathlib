import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure BiogeochemicalCyclingPackage where
  carbonCycle : Prop
  nitrogenCycle : Prop
  sulfurCycle : Prop
  ironCycle : Prop
  manganeseCycle : Prop

structure BiogeochemicalCyclingEvidence (B : BiogeochemicalCyclingPackage) where
  carbonCycleClosed : B.carbonCycle
  nitrogenCycleClosed : B.nitrogenCycle
  sulfurCycleClosed : B.sulfurCycle
  ironCycleClosed : B.ironCycle
  manganeseCycleClosed : B.manganeseCycle

def BiogeochemicalCyclingClosed (B : BiogeochemicalCyclingPackage) : Prop :=
  B.carbonCycle ∧ B.nitrogenCycle ∧ B.sulfurCycle ∧ B.ironCycle ∧ B.manganeseCycle

theorem biogeochemical_cycling_closed_from_evidence (B : BiogeochemicalCyclingPackage) (E : BiogeochemicalCyclingEvidence B) :
    BiogeochemicalCyclingClosed B := by
  exact And.intro E.carbonCycleClosed (And.intro E.nitrogenCycleClosed (And.intro E.sulfurCycleClosed (And.intro E.ironCycleClosed E.manganeseCycleClosed)))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse
