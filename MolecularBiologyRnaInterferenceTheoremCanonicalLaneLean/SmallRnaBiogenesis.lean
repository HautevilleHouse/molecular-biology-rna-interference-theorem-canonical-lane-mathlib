import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure SmallRnaBiogenesis where
  sirnaPrecursorProcessing : Prop
  mirnaPrimaryTranscriptCleavage : Prop
  hairpinLoopExcision : Prop
  methyltransferaseModification : Prop
  nuclearExport : Prop
  biogenesisEvidence : sirnaPrecursorProcessing ∧ mirnaPrimaryTranscriptCleavage ∧ hairpinLoopExcision ∧ methyltransferaseModification ∧ nuclearExport

structure SmallRnaBiogenesisEvidence (B : SmallRnaBiogenesis) where
  sirnaPrecursorProcessingClosed : B.sirnaPrecursorProcessing
  mirnaPrimaryTranscriptCleavageClosed : B.mirnaPrimaryTranscriptCleavage
  hairpinLoopExcisionClosed : B.hairpinLoopExcision
  methyltransferaseModificationClosed : B.methyltransferaseModification
  nuclearExportClosed : B.nuclearExport

def SmallRnaBiogenesisClosed (B : SmallRnaBiogenesis) : Prop :=
  B.sirnaPrecursorProcessing ∧ B.mirnaPrimaryTranscriptCleavage ∧ B.hairpinLoopExcision ∧ B.methyltransferaseModification ∧ B.nuclearExport

theorem small_rna_biogenesis_closed_from_evidence (B : SmallRnaBiogenesis) (E : SmallRnaBiogenesisEvidence B) : SmallRnaBiogenesisClosed B := by
  exact And.intro E.sirnaPrecursorProcessingClosed (And.intro E.mirnaPrimaryTranscriptCleavageClosed (And.intro E.hairpinLoopExcisionClosed (And.intro E.methyltransferaseModificationClosed E.nuclearExportClosed)))

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse