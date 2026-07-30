import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure RdRcComplex where
  rnaDependentRnaPolymerase : Prop
  primerDependentSynthesis : Prop
  dsRnaProduct : Prop
  secondarySirnaGeneration : Prop

def RdRcComplexClosed (R : RdRcComplex) : Prop :=
  R.rnaDependentRnaPolymerase ∧ R.primerDependentSynthesis ∧ R.dsRnaProduct ∧ R.secondarySirnaGeneration

structure RnaInterferenceAmplification where
  initialTrigger : Prop
  amplifierProduction : Prop
  systemicSpread : Prop
  geneSilencingMaintenance : Prop

def RnaInterferenceAmplificationClosed (A : RnaInterferenceAmplification) : Prop :=
  A.initialTrigger ∧ A.amplifierProduction ∧ A.systemicSpread ∧ A.geneSilencingMaintenance

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse
