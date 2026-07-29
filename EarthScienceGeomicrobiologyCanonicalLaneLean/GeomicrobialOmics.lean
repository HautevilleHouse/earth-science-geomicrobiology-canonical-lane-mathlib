import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomicrobiologyCanonicalLaneLean

structure OmicsIntegrationPackage where
  genomicsData : Type
  transcriptomicsData : Type
  proteomicsData : Type
  metabolomicsData : Type
  metagenomicAssembly : Prop
  geneExpressionProfiling : Prop
  functionalAnnotation : Prop
  metabolicPathwayReconstruction : Prop

structure OmicsIntegrationEvidence (O : OmicsIntegrationPackage) where
  metagenomicAssemblyClosed : O.metagenomicAssembly
  geneExpressionProfilingClosed : O.geneExpressionProfiling
  functionalAnnotationClosed : O.functionalAnnotation
  metabolicPathwayReconstructionClosed : O.metabolicPathwayReconstruction

def OmicsIntegrationClosed (O : OmicsIntegrationPackage) : Prop :=
  O.metagenomicAssembly ∧ O.geneExpressionProfiling ∧ O.functionalAnnotation ∧ O.metabolicPathwayReconstruction

theorem omics_integration_closed_from_evidence (O : OmicsIntegrationPackage)
    (E : OmicsIntegrationEvidence O) : OmicsIntegrationClosed O := by
  exact And.intro E.metagenomicAssemblyClosed (And.intro E.geneExpressionProfilingClosed (And.intro E.functionalAnnotationClosed E.metabolicPathwayReconstructionClosed))

end EarthScienceGeomicrobiologyCanonicalLaneLean
end HautevilleHouse