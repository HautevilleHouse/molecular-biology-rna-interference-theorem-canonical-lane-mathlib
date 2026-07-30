import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure RNASilencingPathwayPackage where
  dicerComplex : Prop
  riscLoading : Prop
  sirnaMaturation : Prop
  targetRecognition : Prop
  cleavageInduction : Prop
  dicerComplexClosed : dicerComplex
  riscLoadingClosed : riscLoading
  sirnaMaturationClosed : sirnaMaturation
  targetRecognitionClosed : targetRecognition
  cleavageInductionClosed : cleavageInduction

structure RNASilencingPathwayEvidence (R : RNASilencingPathwayPackage) where
  dicerComplexClosed : R.dicerComplex
  riscLoadingClosed : R.riscLoading
  sirnaMaturationClosed : R.sirnaMaturation
  targetRecognitionClosed : R.targetRecognition
  cleavageInductionClosed : R.cleavageInduction

def RNASilencingPathwayClosed (R : RNASilencingPathwayPackage) : Prop :=
  R.dicerComplex ∧ R.riscLoading ∧ R.sirnaMaturation ∧ R.targetRecognition ∧ R.cleavageInduction

theorem rna_silencing_pathway_closed_from_evidence (R : RNASilencingPathwayPackage) (E : RNASilencingPathwayEvidence R) : RNASilencingPathwayClosed R := by
  exact And.intro E.dicerComplexClosed (And.intro E.riscLoadingClosed (And.intro E.sirnaMaturationClosed (And.intro E.targetRecognitionClosed E.cleavageInductionClosed)))

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse