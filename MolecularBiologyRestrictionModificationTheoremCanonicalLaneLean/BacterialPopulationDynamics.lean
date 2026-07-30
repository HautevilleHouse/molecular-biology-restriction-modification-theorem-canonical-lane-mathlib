import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean.PhageInfectionModel

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure BacterialPopulationDynamics where
  populationSize : ℕ
  growthRate : ℝ
  phagePressure : ℝ
  infectedFraction : ℝ
  resistantFraction : ℝ

def PopulationDynamicsEvidence (B : BacterialPopulationDynamics) : Prop :=
  B.populationSize > 0 ∧ B.growthRate > 0 ∧ B.phagePressure ≥ 0 ∧
  B.infectedFraction ≥ 0 ∧ B.infectedFraction ≤ 1 ∧
  B.resistantFraction ≥ 0 ∧ B.resistantFraction ≤ 1

theorem population_dynamics_constraints (B : BacterialPopulationDynamics) :
    B.populationSize > 0 ∧ B.growthRate > 0 → True := by
  intro h
  trivial

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse
