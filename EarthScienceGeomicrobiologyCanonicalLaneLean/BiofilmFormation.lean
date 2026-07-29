import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure BiofilmFormationPackage where
  surfaceAttachment : Prop
  extracellularPolymerProduction : Prop
  quorumSensing : Prop
  biofilmMaturation : Prop
  detachment : Prop
  antimicrobialResistance : Prop
  nutrientGradient : Prop
  structuralHeterogeneity : Prop

structure BiofilmFormationEvidence (B : BiofilmFormationPackage) where
  surfaceAttachmentClosed : B.surfaceAttachment
  extracellularPolymerProductionClosed : B.extracellularPolymerProduction
  quorumSensingClosed : B.quorumSensing
  biofilmMaturationClosed : B.biofilmMaturation
  detachmentClosed : B.detachment
  antimicrobialResistanceClosed : B.antimicrobialResistance
  nutrientGradientClosed : B.nutrientGradient
  structuralHeterogeneityClosed : B.structuralHeterogeneity

def BiofilmFormationClosed (B : BiofilmFormationPackage) : Prop :=
  B.surfaceAttachment ∧ B.extracellularPolymerProduction ∧
  B.quorumSensing ∧ B.biofilmMaturation ∧ B.detachment ∧
  B.antimicrobialResistance ∧ B.nutrientGradient ∧ B.structuralHeterogeneity

theorem biofilm_formation_closed_from_evidence (B : BiofilmFormationPackage)
    (E : BiofilmFormationEvidence B) : BiofilmFormationClosed B := by
  exact And.intro E.surfaceAttachmentClosed
    (And.intro E.extracellularPolymerProductionClosed
      (And.intro E.quorumSensingClosed
        (And.intro E.biofilmMaturationClosed
          (And.intro E.detachmentClosed
            (And.intro E.antimicrobialResistanceClosed
              (And.intro E.nutrientGradientClosed
                E.structuralHeterogeneityClosed))))))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse