import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure RnaInducedSilencingComplexPackage where
  complexAssembly : Prop
  guideRnaLoading : Prop
  targetScanning : Prop
  silencingEffector : Prop
  complexAssemblyClosed : complexAssembly
  guideRnaLoadingClosed : guideRnaLoading
  targetScanningClosed : targetScanning
  silencingEffectorClosed : silencingEffector

structure RnaInducedSilencingComplexEvidence (R : RnaInducedSilencingComplexPackage) where
  complexAssemblyClosed : R.complexAssembly
  guideRnaLoadingClosed : R.guideRnaLoading
  targetScanningClosed : R.targetScanning
  silencingEffectorClosed : R.silencingEffector

def RnaInducedSilencingComplexClosed (R : RnaInducedSilencingComplexPackage) : Prop :=
  R.complexAssembly ∧ R.guideRnaLoading ∧ R.targetScanning ∧ R.silencingEffector

theorem rna_induced_silencing_complex_closed_from_evidence (R : RnaInducedSilencingComplexPackage) (E : RnaInducedSilencingComplexEvidence R) : RnaInducedSilencingComplexClosed R := by
  exact And.intro E.complexAssemblyClosed (And.intro E.guideRnaLoadingClosed (And.intro E.targetScanningClosed E.silencingEffectorClosed))

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse