import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure RnaInterferenceGeneRegulationPackage where
  transcriptionalSilencing : Prop
  postTranscriptionalSilencing : Prop
  heterochromatinFormation : Prop
  translationalRepression : Prop
  transcriptionalSilencingClosed : transcriptionalSilencing
  postTranscriptionalSilencingClosed : postTranscriptionalSilencing
  heterochromatinFormationClosed : heterochromatinFormation
  translationalRepressionClosed : translationalRepression

structure RnaInterferenceGeneRegulationEvidence (R : RnaInterferenceGeneRegulationPackage) where
  transcriptionalSilencingClosed : R.transcriptionalSilencing
  postTranscriptionalSilencingClosed : R.postTranscriptionalSilencing
  heterochromatinFormationClosed : R.heterochromatinFormation
  translationalRepressionClosed : R.translationalRepression

def RnaInterferenceGeneRegulationClosed (R : RnaInterferenceGeneRegulationPackage) : Prop :=
  R.transcriptionalSilencing ∧ R.postTranscriptionalSilencing ∧ R.heterochromatinFormation ∧ R.translationalRepression

theorem rna_interference_gene_regulation_closed_from_evidence (R : RnaInterferenceGeneRegulationPackage) (E : RnaInterferenceGeneRegulationEvidence R) : RnaInterferenceGeneRegulationClosed R := by
  exact And.intro E.transcriptionalSilencingClosed (And.intro E.postTranscriptionalSilencingClosed (And.intro E.heterochromatinFormationClosed E.translationalRepressionClosed))

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse