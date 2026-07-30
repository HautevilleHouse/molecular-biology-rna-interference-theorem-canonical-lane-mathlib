import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean

structure ArgonauteEffectorComplex where
  guideRnaBinding : Prop
  seedRegionBasePairing : Prop
  catalyticCleavage : Prop
  targetRelease : Prop
  complexEvidence : guideRnaBinding ∧ seedRegionBasePairing ∧ catalyticCleavage ∧ targetRelease

structure ArgonauteEffectorEvidence (A : ArgonauteEffectorComplex) where
  guideRnaBindingClosed : A.guideRnaBinding
  seedRegionBasePairingClosed : A.seedRegionBasePairing
  catalyticCleavageClosed : A.catalyticCleavage
  targetReleaseClosed : A.targetRelease

def ArgonauteEffectorClosed (A : ArgonauteEffectorComplex) : Prop :=
  A.guideRnaBinding ∧ A.seedRegionBasePairing ∧ A.catalyticCleavage ∧ A.targetRelease

theorem argonaute_effector_closed_from_evidence (A : ArgonauteEffectorComplex) (E : ArgonauteEffectorEvidence A) : ArgonauteEffectorClosed A := by
  exact And.intro E.guideRnaBindingClosed (And.intro E.seedRegionBasePairingClosed (And.intro E.catalyticCleavageClosed E.targetReleaseClosed))

end MolecularBiologyRnaInterferenceTheoremCanonicalLaneLean
end HautevilleHouse