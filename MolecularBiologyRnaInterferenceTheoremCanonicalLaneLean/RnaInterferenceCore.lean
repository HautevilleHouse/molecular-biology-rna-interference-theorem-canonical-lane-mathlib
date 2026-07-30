import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure RnaInterferenceCorePackage where
  dicerRecognition : Prop
  riscAssembly : Prop
  passengerStrandCleavage : Prop
  guideStrandRetention : Prop
  targetRecognition : Prop
  cleavageActivity : Prop

structure RnaInterferenceCoreEvidence (C : RnaInterferenceCorePackage) where
  dicerRecognitionClosed : C.dicerRecognition
  riscAssemblyClosed : C.riscAssembly
  passengerStrandCleavageClosed : C.passengerStrandCleavage
  guideStrandRetentionClosed : C.guideStrandRetention
  targetRecognitionClosed : C.targetRecognition
  cleavageActivityClosed : C.cleavageActivity

def RnaInterferenceCoreClosed (C : RnaInterferenceCorePackage) : Prop :=
  C.dicerRecognition ∧ C.riscAssembly ∧ C.passengerStrandCleavage ∧ C.guideStrandRetention ∧ C.targetRecognition ∧ C.cleavageActivity

theorem rna_interference_core_closed_from_evidence (C : RnaInterferenceCorePackage) (E : RnaInterferenceCoreEvidence C) : RnaInterferenceCoreClosed C := by
  exact And.intro E.dicerRecognitionClosed (And.intro E.riscAssemblyClosed (And.intro E.passengerStrandCleavageClosed (And.intro E.guideStrandRetentionClosed (And.intro E.targetRecognitionClosed E.cleavageActivityClosed))))

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse