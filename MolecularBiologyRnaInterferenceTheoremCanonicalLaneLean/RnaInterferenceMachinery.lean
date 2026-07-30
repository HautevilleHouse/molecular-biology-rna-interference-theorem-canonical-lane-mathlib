import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure DicerComplex where
  helicaseDomain : Prop
  rnaseThreeDomain : Prop
  dsRnaBinding : Prop
  processingActivity : Prop

def DicerComplexClosed (D : DicerComplex) : Prop :=
  D.helicaseDomain ∧ D.rnaseThreeDomain ∧ D.dsRnaBinding ∧ D.processingActivity

structure RiscAssembly where
  guideStrandLoading : Prop
  argonauteCatalyticActivity : Prop
  slicerEndonuclease : Prop
  rnaInducedSilencingComplex : Prop

def RiscAssemblyClosed (R : RiscAssembly) : Prop :=
  R.guideStrandLoading ∧ R.argonauteCatalyticActivity ∧ R.slicerEndonuclease ∧ R.rnaInducedSilencingComplex

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse
