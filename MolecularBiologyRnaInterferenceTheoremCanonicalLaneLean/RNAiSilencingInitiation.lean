import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure RNASilencingInitiationPackage where
  dicerComplexAssembled : Prop
  riscLoadingProcess : Prop
  guideStrandSelection : Prop
  passengerStrandDegradation : Prop
  silencingCompetentRISC : Prop

structure RNASilencingInitiationEvidence (P : RNASilencingInitiationPackage) where
  dicerComplexAssembledClosed : P.dicerComplexAssembled
  riscLoadingProcessClosed : P.riscLoadingProcess
  guideStrandSelectionClosed : P.guideStrandSelection
  passengerStrandDegradationClosed : P.passengerStrandDegradation
  silencingCompetentRISCObtained : P.silencingCompetentRISC

def RNASilencingInitiationClosed (P : RNASilencingInitiationPackage) : Prop :=
  P.dicerComplexAssembled ∧ P.riscLoadingProcess ∧ P.guideStrandSelection ∧ P.passengerStrandDegradation ∧ P.silencingCompetentRISC

theorem rna_silencing_initiation_closed_from_evidence (P : RNASilencingInitiationPackage) (E : RNASilencingInitiationEvidence P) :
    RNASilencingInitiationClosed P := by
  exact And.intro E.dicerComplexAssembledClosed
    (And.intro E.riscLoadingProcessClosed
      (And.intro E.guideStrandSelectionClosed
        (And.intro E.passengerStrandDegradationClosed E.silencingCompetentRISCObtained)))

end HautevilleHouse.MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse
