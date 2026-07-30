import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure EvolutionaryGameTheoryRM where
  payoffMatrix : Type u
  replicatorDynamicsStable : Prop
  evolutionaryStableStrategy : Prop
  hostPhageFrequency : Prop
  polymorphismMaintained : Prop

def EvolutionaryGameTheoryRMClosed (E : EvolutionaryGameTheoryRM) : Prop :=
  E.replicatorDynamicsStable ∧ E.evolutionaryStableStrategy ∧ E.hostPhageFrequency ∧ E.polymorphismMaintained

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse