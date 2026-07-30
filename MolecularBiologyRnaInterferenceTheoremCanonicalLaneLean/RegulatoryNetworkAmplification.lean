import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure RegulatoryNetworkAmplification where
  rnaDependentRnaPolymeraseActivity : Prop
  secondarySirnaProduction : Prop
  transitiveSilencingSpreading : Prop
  systemicSignaling : Prop
  amplificationEvidence : rnaDependentRnaPolymeraseActivity ∧ secondarySirnaProduction ∧ transitiveSilencingSpreading ∧ systemicSignaling

structure RegulatoryAmplificationEvidence (R : RegulatoryNetworkAmplification) where
  rnaDependentRnaPolymeraseActivityClosed : R.rnaDependentRnaPolymeraseActivity
  secondarySirnaProductionClosed : R.secondarySirnaProduction
  transitiveSilencingSpreadingClosed : R.transitiveSilencingSpreading
  systemicSignalingClosed : R.systemicSignaling

def RegulatoryAmplificationClosed (R : RegulatoryNetworkAmplification) : Prop :=
  R.rnaDependentRnaPolymeraseActivity ∧ R.secondarySirnaProduction ∧ R.transitiveSilencingSpreading ∧ R.systemicSignaling

theorem regulatory_amplification_closed_from_evidence (R : RegulatoryNetworkAmplification) (E : RegulatoryAmplificationEvidence R) : RegulatoryAmplificationClosed R := by
  exact And.intro E.rnaDependentRnaPolymeraseActivityClosed (And.intro E.secondarySirnaProductionClosed (And.intro E.transitiveSilencingSpreadingClosed E.systemicSignalingClosed))

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse