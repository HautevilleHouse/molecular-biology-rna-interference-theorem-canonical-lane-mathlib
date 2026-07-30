import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure TargetRecognitionCleavagePackage where
  complementaryBinding : Prop
  seedRegionRecognition : Prop
  argonauteCatalyticActivity : Prop
  targetMrnaCleavage : Prop
  cleavageProductRelease : Prop

structure TargetRecognitionCleavageEvidence (P : TargetRecognitionCleavagePackage) where
  complementaryBindingClosed : P.complementaryBinding
  seedRegionRecognitionClosed : P.seedRegionRecognition
  argonauteCatalyticActivityClosed : P.argonauteCatalyticActivity
  targetMrnaCleavageClosed : P.targetMrnaCleavage
  cleavageProductReleaseClosed : P.cleavageProductRelease

def TargetRecognitionCleavageClosed (P : TargetRecognitionCleavagePackage) : Prop :=
  P.complementaryBinding ∧ P.seedRegionRecognition ∧ P.argonauteCatalyticActivity ∧ P.targetMrnaCleavage ∧ P.cleavageProductRelease

theorem target_recognition_cleavage_closed_from_evidence (P : TargetRecognitionCleavagePackage) (E : TargetRecognitionCleavageEvidence P) :
    TargetRecognitionCleavageClosed P := by
  exact And.intro E.complementaryBindingClosed
    (And.intro E.seedRegionRecognitionClosed
      (And.intro E.argonauteCatalyticActivityClosed
        (And.intro E.targetMrnaCleavageClosed E.cleavageProductReleaseClosed)))

end HautevilleHouse.MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse
