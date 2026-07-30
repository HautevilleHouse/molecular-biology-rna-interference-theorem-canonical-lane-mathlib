import HautevilleHouse.MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

def ConstrainedRnaInterferenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rna_interference_endgame (A : AdmissibleClass) :
    ConstrainedRnaInterferenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse