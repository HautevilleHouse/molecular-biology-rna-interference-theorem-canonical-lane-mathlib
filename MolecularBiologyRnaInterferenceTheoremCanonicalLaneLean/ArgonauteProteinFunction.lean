import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure ArgonauteProteinFunctionPackage where
  sirnaBinding : Prop
  slicerActivity : Prop
  targetRnaCleavage : Prop
  conformationalSwitch : Prop
  sirnaBindingClosed : sirnaBinding
  slicerActivityClosed : slicerActivity
  targetRnaCleavageClosed : targetRnaCleavage
  conformationalSwitchClosed : conformationalSwitch

structure ArgonauteProteinFunctionEvidence (A : ArgonauteProteinFunctionPackage) where
  sirnaBindingClosed : A.sirnaBinding
  slicerActivityClosed : A.slicerActivity
  targetRnaCleavageClosed : A.targetRnaCleavage
  conformationalSwitchClosed : A.conformationalSwitch

def ArgonauteProteinFunctionClosed (A : ArgonauteProteinFunctionPackage) : Prop :=
  A.sirnaBinding ∧ A.slicerActivity ∧ A.targetRnaCleavage ∧ A.conformationalSwitch

theorem argonaute_protein_function_closed_from_evidence (A : ArgonauteProteinFunctionPackage) (E : ArgonauteProteinFunctionEvidence A) : ArgonauteProteinFunctionClosed A := by
  exact And.intro E.sirnaBindingClosed (And.intro E.slicerActivityClosed (And.intro E.targetRnaCleavageClosed E.conformationalSwitchClosed))

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse