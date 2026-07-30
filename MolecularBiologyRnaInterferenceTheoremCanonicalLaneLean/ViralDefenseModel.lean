import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure ViralDefenseModelPackage where
  dsrnaViralTrigger : Prop
  antiviralRnaiResponse : Prop
  viralSuppressorOvercome : Prop
  populationLevelProtection : Prop

def ViralDefenseModelClosed (V : ViralDefenseModelPackage) : Prop :=
  V.dsrnaViralTrigger ∧ V.antiviralRnaiResponse ∧ V.viralSuppressorOvercome ∧ V.populationLevelProtection

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse