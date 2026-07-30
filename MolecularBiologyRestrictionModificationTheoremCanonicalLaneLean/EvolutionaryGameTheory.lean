import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure EvolutionaryGame where
  playerSet : Type u
  strategySet : Type v
  payoffMatrix : ℝ → ℝ → ℝ
  equilibriumCondition : Prop

def EvolutionaryStableState (G : EvolutionaryGame) : Prop :=
  G.equilibriumCondition

theorem equilibrium_implies_stable (G : EvolutionaryGame) (h : G.equilibriumCondition) :
    EvolutionaryStableState G := h

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse
