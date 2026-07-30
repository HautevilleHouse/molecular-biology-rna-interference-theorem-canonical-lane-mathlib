import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure TranscriptionalSilencingPackage where
  histoneModification : Prop
  dnaMethylation : Prop
  heterochromatinFormation : Prop
  chromatinRemodeling : Prop
  epigeneticMaintenance : Prop

def TranscriptionalSilencingClosed (T : TranscriptionalSilencingPackage) : Prop :=
  T.histoneModification ∧ T.dnaMethylation ∧ T.heterochromatinFormation ∧ T.chromatinRemodeling ∧ T.epigeneticMaintenance

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse