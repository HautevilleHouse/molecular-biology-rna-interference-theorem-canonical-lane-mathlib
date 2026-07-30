import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure ViralSuppressionRnaInterferencePackage where
  viralRnaTargeting : Prop
  sirnaMediatedDegradation : Prop
  replicationInhibition : Prop
  hostAntiviralResponse : Prop
  viralRnaTargetingClosed : viralRnaTargeting
  sirnaMediatedDegradationClosed : sirnaMediatedDegradation
  replicationInhibitionClosed : replicationInhibition
  hostAntiviralResponseClosed : hostAntiviralResponse

structure ViralSuppressionRnaInterferenceEvidence (V : ViralSuppressionRnaInterferencePackage) where
  viralRnaTargetingClosed : V.viralRnaTargeting
  sirnaMediatedDegradationClosed : V.sirnaMediatedDegradation
  replicationInhibitionClosed : V.replicationInhibition
  hostAntiviralResponseClosed : V.hostAntiviralResponse

def ViralSuppressionRnaInterferenceClosed (V : ViralSuppressionRnaInterferencePackage) : Prop :=
  V.viralRnaTargeting ∧ V.sirnaMediatedDegradation ∧ V.replicationInhibition ∧ V.hostAntiviralResponse

theorem viral_suppression_rna_interference_closed_from_evidence (V : ViralSuppressionRnaInterferencePackage) (E : ViralSuppressionRnaInterferenceEvidence V) : ViralSuppressionRnaInterferenceClosed V := by
  exact And.intro E.viralRnaTargetingClosed (And.intro E.sirnaMediatedDegradationClosed (And.intro E.replicationInhibitionClosed E.hostAntiviralResponseClosed))

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse