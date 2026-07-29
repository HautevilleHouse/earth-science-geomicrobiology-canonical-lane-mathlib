import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure SedimentColumn where
  depth : Float
  layers : Nat
  porosityProfile : Float -> Float
  organicMatterFlux : Float
  microbialActivityProfile : Float -> Float
  poreWaterChemistry : Prop
  depthPositive : depth > 0
  layersPositive : layers > 0
  porosityContinuity : Prop
  porosityContinuityTerm : porosityContinuity

structure SedimentColumnEvidence (S : SedimentColumn) where
  poreWaterChemistryClosed : S.poreWaterChemistry
  porosityContinuityClosed : S.porosityContinuity

def SedimentColumnClosed (S : SedimentColumn) : Prop :=
  S.poreWaterChemistry ∧ S.porosityContinuity

theorem sediment_column_closed_from_evidence (S : SedimentColumn) (E : SedimentColumnEvidence S) :
    SedimentColumnClosed S := by
  exact And.intro E.poreWaterChemistryClosed E.porosityContinuityClosed

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse