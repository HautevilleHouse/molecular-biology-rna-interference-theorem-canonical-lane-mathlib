import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure SirnaDuplex where
  senseStrand : String
  antisenseStrand : String
  twoNucleotideOverhang : Prop
  thermodynamicStability : Prop

def SirnaDuplexClosed (S : SirnaDuplex) : Prop :=
  S.twoNucleotideOverhang ∧ S.thermodynamicStability

structure SirnaOffTarget where
  seedRegionMatch : Prop
  partialComplementarity : Prop
  mrnaDegradation : Prop

def SirnaOffTargetClosed (O : SirnaOffTarget) : Prop :=
  O.seedRegionMatch ∧ O.partialComplementarity ∧ O.mrnaDegradation

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse
