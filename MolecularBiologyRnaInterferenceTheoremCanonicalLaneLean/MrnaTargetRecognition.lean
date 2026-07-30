import HautevilleHouse.MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean.RiscLoadingComplex

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure MrnaTargetPackage {D : DicerProcessingPackage} {R : DicerProcessingEvidence D}
    {L : RiscLoadingPackage R} (M : RiscLoadingEvidence L) where
  complementarityRule : Prop
  seedRegionBinding : Prop
  targetAccessibility : Prop

structure MrnaTargetEvidence {D : DicerProcessingPackage} {R : DicerProcessingEvidence D}
    {L : RiscLoadingPackage R} {M : RiscLoadingEvidence L} (T : MrnaTargetPackage M) where
  complementarityRuleClosed : T.complementarityRule
  seedRegionBindingClosed : T.seedRegionBinding
  targetAccessibilityClosed : T.targetAccessibility

def MrnaTargetClosed {D : DicerProcessingPackage} {R : DicerProcessingEvidence D}
    {L : RiscLoadingPackage R} {M : RiscLoadingEvidence L} (T : MrnaTargetPackage M) : Prop :=
  T.complementarityRule ∧ T.seedRegionBinding ∧ T.targetAccessibility

theorem mrna_target_closed_from_evidence {D : DicerProcessingPackage}
    {R : DicerProcessingEvidence D} {L : RiscLoadingPackage R}
    {M : RiscLoadingEvidence L} (T : MrnaTargetPackage M)
    (E : MrnaTargetEvidence T) : MrnaTargetClosed T := by
  exact And.intro E.complementarityRuleClosed
    (And.intro E.seedRegionBindingClosed E.targetAccessibilityClosed)

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse