import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean.RestrictionModificationPathway
import HautevilleHouse.MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean.PhageInfectionDynamics

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure EvolutionaryGamePayoffs (A : AdmissibleClass) (P : RestrictionModificationPathway A) (I : PhageInfectionDynamics A P) where
  costOfDefense : Float
  benefitOfProtection : Float
  payoffToDefenders : Float
  payoffToNonDefenders : Float
  fitnessGap : payoffToDefenders - costOfDefense > payoffToNonDefenders

def EvolutionaryGamePayoffsClosed (A : AdmissibleClass) (P : RestrictionModificationPathway A) (I : PhageInfectionDynamics A P) (G : EvolutionaryGamePayoffs A P I) : Prop :=
  G.fitnessGap

theorem evolutionary_game_payoffs_closed_intro
    (A : AdmissibleClass) (P : RestrictionModificationPathway A) (I : PhageInfectionDynamics A P) (G : EvolutionaryGamePayoffs A P I) :
    EvolutionaryGamePayoffsClosed A P I G := by
  exact G.fitnessGap

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse