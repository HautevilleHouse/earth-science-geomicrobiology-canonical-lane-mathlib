import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure BiomineralizationPackage where
  nucleation : Prop
  crystalGrowth : Prop
  phaseTransformation : Prop
  organicMatrix : Prop
  microbialPrecipitation : Prop
  dissolution : Prop
  isotopicFractionation : Prop
  environmentalControl : Prop

structure BiomineralizationEvidence (B : BiomineralizationPackage) where
  nucleationClosed : B.nucleation
  crystalGrowthClosed : B.crystalGrowth
  phaseTransformationClosed : B.phaseTransformation
  organicMatrixClosed : B.organicMatrix
  microbialPrecipitationClosed : B.microbialPrecipitation
  dissolutionClosed : B.dissolution
  isotopicFractionationClosed : B.isotopicFractionation
  environmentalControlClosed : B.environmentalControl

def BiomineralizationClosed (B : BiomineralizationPackage) : Prop :=
  B.nucleation ∧ B.crystalGrowth ∧ B.phaseTransformation ∧
  B.organicMatrix ∧ B.microbialPrecipitation ∧ B.dissolution ∧
  B.isotopicFractionation ∧ B.environmentalControl

theorem biomineralization_closed_from_evidence (B : BiomineralizationPackage)
    (E : BiomineralizationEvidence B) : BiomineralizationClosed B := by
  exact And.intro E.nucleationClosed
    (And.intro E.crystalGrowthClosed
      (And.intro E.phaseTransformationClosed
        (And.intro E.organicMatrixClosed
          (And.intro E.microbialPrecipitationClosed
            (And.intro E.dissolutionClosed
              (And.intro E.isotopicFractionationClosed
                E.environmentalControlClosed))))))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse