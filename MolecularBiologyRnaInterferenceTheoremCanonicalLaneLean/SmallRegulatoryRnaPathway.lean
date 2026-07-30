import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure SmallRegulatoryRnaPathwayPackage where
  dsrnaGeneration : Prop
  dicerProcessing : Prop
  riscLoading : Prop
  mrnaTargeting : Prop
  slicerActivity : Prop
  amplification : Prop

def SmallRegulatoryRnaPathwayClosed (P : SmallRegulatoryRnaPathwayPackage) : Prop :=
  P.dsrnaGeneration ∧ P.dicerProcessing ∧ P.riscLoading ∧ P.mrnaTargeting ∧ P.slicerActivity ∧ P.amplification

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse