import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean.RestrictionModificationPathway
import HautevilleHouse.MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean.PhageInfectionDynamics
import HautevilleHouse.MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean.EvolutionaryGamePayoffs

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure PopulationDynamicsEquilibrium (A : AdmissibleClass) (P : RestrictionModificationPathway A) (I : PhageInfectionDynamics A P) (G : EvolutionaryGamePayoffs A P I) where
  stablePopulationSize : Float
  steadyStateCondition : stablePopulationSize > 0.0

def PopulationDynamicsEquilibriumClosed (A : AdmissibleClass) (P : RestrictionModificationPathway A) (I : PhageInfectionDynamics A P) (G : EvolutionaryGamePayoffs A P I) (E : PopulationDynamicsEquilibrium A P I G) : Prop :=
  E.steadyStateCondition

theorem population_dynamics_equilibrium_closed_intro
    (A : AdmissibleClass) (P : RestrictionModificationPathway A) (I : PhageInfectionDynamics A P) (G : EvolutionaryGamePayoffs A P I) (E : PopulationDynamicsEquilibrium A P I G) :
    PopulationDynamicsEquilibriumClosed A P I G E := by
  exact E.steadyStateCondition

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse