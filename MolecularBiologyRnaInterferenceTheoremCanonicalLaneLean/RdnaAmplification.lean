import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure RdnaAmplificationPackage where
  rdrpRecruitment : Prop
  secondarySirnaSynthesis : Prop
  transitiveSilencing : Prop
  systemicSpread : Prop

def RdnaAmplificationClosed (R : RdnaAmplificationPackage) : Prop :=
  R.rdrpRecruitment ∧ R.secondarySirnaSynthesis ∧ R.transitiveSilencing ∧ R.systemicSpread

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse