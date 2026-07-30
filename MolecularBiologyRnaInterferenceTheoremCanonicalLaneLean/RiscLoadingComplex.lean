import HautevilleHouse.MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean.RnaInterferenceMechanism

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure RiscLoadingPackage {D : DicerProcessingPackage} (R : DicerProcessingEvidence D) where
  guideStrandSelection : Prop
  passengerStrandCleavage : Prop
  riscActivation : Prop

structure RiscLoadingEvidence {D : DicerProcessingPackage} {R : DicerProcessingEvidence D}
    (L : RiscLoadingPackage R) where
  guideStrandSelectionClosed : L.guideStrandSelection
  passengerStrandCleavageClosed : L.passengerStrandCleavage
  riscActivationClosed : L.riscActivation

def RiscLoadingClosed {D : DicerProcessingPackage} {R : DicerProcessingEvidence D}
    (L : RiscLoadingPackage R) : Prop :=
  L.guideStrandSelection ∧ L.passengerStrandCleavage ∧ L.riscActivation

theorem risc_loading_closed_from_evidence {D : DicerProcessingPackage}
    {R : DicerProcessingEvidence D} (L : RiscLoadingPackage R)
    (E : RiscLoadingEvidence L) : RiscLoadingClosed L := by
  exact And.intro E.guideStrandSelectionClosed
    (And.intro E.passengerStrandCleavageClosed E.riscActivationClosed)

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse