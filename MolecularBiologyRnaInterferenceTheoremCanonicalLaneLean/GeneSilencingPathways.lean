import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure GeneSilencingPathway where
  sirnaPathwayActive : Prop
  mirnaPathwayActive : Prop
  transcriptionalSilencing : Prop
  postTranscriptionalSilencing : Prop
  chromatinRemodeling : Prop
  pathwayEvidence : sirnaPathwayActive ∧ mirnaPathwayActive ∧ transcriptionalSilencing ∧ postTranscriptionalSilencing ∧ chromatinRemodeling

structure GeneSilencingEvidence (P : GeneSilencingPathway) where
  sirnaPathwayActiveClosed : P.sirnaPathwayActive
  mirnaPathwayActiveClosed : P.mirnaPathwayActive
  transcriptionalSilencingClosed : P.transcriptionalSilencing
  postTranscriptionalSilencingClosed : P.postTranscriptionalSilencing
  chromatinRemodelingClosed : P.chromatinRemodeling

def GeneSilencingClosed (P : GeneSilencingPathway) : Prop :=
  P.sirnaPathwayActive ∧ P.mirnaPathwayActive ∧ P.transcriptionalSilencing ∧ P.postTranscriptionalSilencing ∧ P.chromatinRemodeling

theorem gene_silencing_closed_from_evidence (P : GeneSilencingPathway) (E : GeneSilencingEvidence P) : GeneSilencingClosed P := by
  exact And.intro E.sirnaPathwayActiveClosed (And.intro E.mirnaPathwayActiveClosed (And.intro E.transcriptionalSilencingClosed (And.intro E.postTranscriptionalSilencingClosed E.chromatinRemodelingClosed)))

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse