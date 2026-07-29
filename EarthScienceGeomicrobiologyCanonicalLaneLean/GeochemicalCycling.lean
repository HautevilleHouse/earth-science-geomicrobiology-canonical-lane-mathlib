import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure GeochemicalCyclingPackage where
  carbonCycle : Prop
  nitrogenCycle : Prop
  sulfurCycle : Prop
  ironCycle : Prop
  manganeseCycle : Prop
  traceMetalCycle : Prop
  redoxCoupling : Prop
  microbialCatalysis : Prop
  cyclingTimescales : Prop

structure GeochemicalCyclingEvidence (G : GeochemicalCyclingPackage) where
  carbonCycleClosed : G.carbonCycle
  nitrogenCycleClosed : G.nitrogenCycle
  sulfurCycleClosed : G.sulfurCycle
  ironCycleClosed : G.ironCycle
  manganeseCycleClosed : G.manganeseCycle
  traceMetalCycleClosed : G.traceMetalCycle
  redoxCouplingClosed : G.redoxCoupling
  microbialCatalysisClosed : G.microbialCatalysis
  cyclingTimescalesClosed : G.cyclingTimescales

def GeochemicalCyclingClosed (G : GeochemicalCyclingPackage) : Prop :=
  G.carbonCycle ∧ G.nitrogenCycle ∧ G.sulfurCycle ∧ G.ironCycle ∧
  G.manganeseCycle ∧ G.traceMetalCycle ∧ G.redoxCoupling ∧
  G.microbialCatalysis ∧ G.cyclingTimescales

theorem geochemical_cycling_closed_from_evidence (G : GeochemicalCyclingPackage)
    (E : GeochemicalCyclingEvidence G) : GeochemicalCyclingClosed G := by
  exact And.intro E.carbonCycleClosed
    (And.intro E.nitrogenCycleClosed
      (And.intro E.sulfurCycleClosed
        (And.intro E.ironCycleClosed
          (And.intro E.manganeseCycleClosed
            (And.intro E.traceMetalCycleClosed
              (And.intro E.redoxCouplingClosed
                (And.intro E.microbialCatalysisClosed E.cyclingTimescalesClosed)))))))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse