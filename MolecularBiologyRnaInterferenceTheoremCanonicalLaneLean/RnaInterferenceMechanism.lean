import HautevilleHouse.MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure DicerProcessingPackage where
  dicingEfficiency : Prop
  compatibilityWithRISC : Prop
  sirnaMaturation : Prop

structure DicerProcessingEvidence (D : DicerProcessingPackage) where
  dicingEfficiencyClosed : D.dicingEfficiency
  compatibilityWithRISCOpened : D.compatibilityWithRISC
  sirnaMaturationClosed : D.sirnaMaturation

def DicerProcessingClosed (D : DicerProcessingPackage) : Prop :=
  D.dicingEfficiency ∧ D.compatibilityWithRISC ∧ D.sirnaMaturation

theorem dicer_processing_closed_from_evidence (D : DicerProcessingPackage)
    (E : DicerProcessingEvidence D) : DicerProcessingClosed D := by
  exact And.intro E.dicingEfficiencyClosed
    (And.intro E.compatibilityWithRISCOpened E.sirnaMaturationClosed)

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse