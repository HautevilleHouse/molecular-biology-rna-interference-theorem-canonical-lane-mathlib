import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure RNAiAmplificationSpreadPackage where
  rdrpActivity : Prop
  secondarySirnaProduction : Prop
  systemicSpread : Prop
  transitiveSilencing : Prop
  amplificationCycleClosed : Prop

structure RNAiAmplificationSpreadEvidence (P : RNAiAmplificationSpreadPackage) where
  rdrpActivityClosed : P.rdrpActivity
  secondarySirnaProductionClosed : P.secondarySirnaProduction
  systemicSpreadClosed : P.systemicSpread
  transitiveSilencingClosed : P.transitiveSilencing
  amplificationCycleClosedTerm : P.amplificationCycleClosed

def RNAiAmplificationSpreadClosed (P : RNAiAmplificationSpreadPackage) : Prop :=
  P.rdrpActivity ∧ P.secondarySirnaProduction ∧ P.systemicSpread ∧ P.transitiveSilencing ∧ P.amplificationCycleClosed

theorem rnai_amplification_spread_closed_from_evidence (P : RNAiAmplificationSpreadPackage) (E : RNAiAmplificationSpreadEvidence P) :
    RNAiAmplificationSpreadClosed P := by
  exact And.intro E.rdrpActivityClosed
    (And.intro E.secondarySirnaProductionClosed
      (And.intro E.systemicSpreadClosed
        (And.intro E.transitiveSilencingClosed E.amplificationCycleClosedTerm)))

end HautevilleHouse.MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse
