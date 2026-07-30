import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure TherapeuticRnai where
  syntheticSirnaDesign : Prop
  deliveryVehicle : Prop
  targetGeneSelection : Prop
  inVivoEfficacy : Prop
  offTargetMinimization : Prop
  immuneStimulationAvoidance : Prop

def TherapeuticRnaiClosed (T : TherapeuticRnai) : Prop :=
  T.syntheticSirnaDesign ∧ T.deliveryVehicle ∧ T.targetGeneSelection ∧ T.inVivoEfficacy ∧ T.offTargetMinimization ∧ T.immuneStimulationAvoidance

structure RnaiDrugDevelopment where
  leadOptimization : Prop
  preclinicalToxicity : Prop
  clinicalTrialsPhaseOne : Prop
  clinicalTrialsPhaseTwo : Prop
  regulatoryApproval : Prop
  marketAuthorization : Prop

def RnaiDrugDevelopmentClosed (D : RnaiDrugDevelopment) : Prop :=
  D.leadOptimization ∧ D.preclinicalToxicity ∧ D.clinicalTrialsPhaseOne ∧ D.clinicalTrialsPhaseTwo ∧ D.regulatoryApproval ∧ D.marketAuthorization

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse
