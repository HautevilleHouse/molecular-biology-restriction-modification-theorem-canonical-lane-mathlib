import HautevilleHouse.MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

def ConstrainedRMClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rm_endgame (A : AdmissibleClass) :
    ConstrainedRMClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse