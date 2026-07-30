import HautevilleHouse.MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean.MrnaTargetRecognition

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure SilencingPackage {D : DicerProcessingPackage} {R : DicerProcessingEvidence D}
    {L : RiscLoadingPackage R} {M : RiscLoadingEvidence L}
    (T : MrnaTargetPackage M) where
  translationalRepression : Prop
  mrnaCleavage : Prop
  deadenylation : Prop

structure SilencingEvidence {D : DicerProcessingPackage} {R : DicerProcessingEvidence D}
    {L : RiscLoadingPackage R} {M : RiscLoadingEvidence L}
    {T : MrnaTargetPackage M} (S : SilencingPackage T) where
  translationalRepressionClosed : S.translationalRepression
  mrnaCleavageClosed : S.mrnaCleavage
  deadenylationClosed : S.deadenylation

def SilencingClosed {D : DicerProcessingPackage} {R : DicerProcessingEvidence D}
    {L : RiscLoadingPackage R} {M : RiscLoadingEvidence L}
    {T : MrnaTargetPackage M} (S : SilencingPackage T) : Prop :=
  S.translationalRepression ∧ S.mrnaCleavage ∧ S.deadenylation

theorem silencing_closed_from_evidence {D : DicerProcessingPackage}
    {R : DicerProcessingEvidence D} {L : RiscLoadingPackage R}
    {M : RiscLoadingEvidence L} {T : MrnaTargetPackage M}
    (S : SilencingPackage T) (E : SilencingEvidence S) : SilencingClosed S := by
  exact And.intro E.translationalRepressionClosed
    (And.intro E.mrnaCleavageClosed E.deadenylationClosed)

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse