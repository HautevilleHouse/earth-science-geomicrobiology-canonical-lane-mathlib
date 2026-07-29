import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure ExtremeEnvironmentAdaptationPackage where
  thermophily : Prop
  psychrophily : Prop
  acidophily : Prop
  alkaliphily : Prop
  halophily : Prop
  barophily : Prop
  radiationResistance : Prop
  desiccationTolerance : Prop
  metabolicVersatility : Prop

structure ExtremeEnvironmentAdaptationEvidence
    (E : ExtremeEnvironmentAdaptationPackage) where
  thermophilyClosed : E.thermophily
  psychrophilyClosed : E.psychrophily
  acidophilyClosed : E.acidophily
  alkaliphilyClosed : E.alkaliphily
  halophilyClosed : E.halophily
  barophilyClosed : E.barophily
  radiationResistanceClosed : E.radiationResistance
  desiccationToleranceClosed : E.dessicationTolerance
  metabolicVersatilityClosed : E.metabolicVersatility

def ExtremeEnvironmentAdaptationClosed
    (E : ExtremeEnvironmentAdaptationPackage) : Prop :=
  E.thermophily ∧ E.psychrophily ∧ E.acidophily ∧ E.alkaliphily ∧
  E.halophily ∧ E.barophily ∧ E.radiationResistance ∧
  E.dessicationTolerance ∧ E.metabolicVersatility

theorem extreme_environment_adaptation_closed_from_evidence
    (E : ExtremeEnvironmentAdaptationPackage)
    (Ev : ExtremeEnvironmentAdaptationEvidence E) :
    ExtremeEnvironmentAdaptationClosed E := by
  exact And.intro Ev.thermophilyClosed
    (And.intro Ev.psychrophilyClosed
      (And.intro Ev.acidophilyClosed
        (And.intro Ev.alkaliphilyClosed
          (And.intro Ev.halophilyClosed
            (And.intro Ev.barophilyClosed
              (And.intro Ev.radiationResistanceClosed
                (And.intro Ev.dessicationToleranceClosed
                  Ev.metabolicVersatilityClosed)))))))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse