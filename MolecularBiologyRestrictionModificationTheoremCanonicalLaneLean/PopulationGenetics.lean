import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure PopulationGeneticsPackage {R : RestrictionModificationSystem}
    {E : EvolutionaryDynamicsPackage R} where
  alleleFrequency : Prop
  fixationProbability : Prop
  linkageDisequilibrium : Prop
  coalescentProcess : Prop

structure PopulationGeneticsEvidence {R : RestrictionModificationSystem}
    {E : EvolutionaryDynamicsPackage R} (P : PopulationGeneticsPackage E) where
  alleleFrequencyClosed : P.alleleFrequency
  fixationProbabilityClosed : P.fixationProbability
  linkageDisequilibriumClosed : P.linkageDisequilibrium
  coalescentProcessClosed : P.coalescentProcess

def PopulationGeneticsClosed {R : RestrictionModificationSystem}
    {E : EvolutionaryDynamicsPackage R} (P : PopulationGeneticsPackage E) : Prop :=
  P.alleleFrequency ∧ P.fixationProbability ∧ P.linkageDisequilibrium ∧ P.coalescentProcess

theorem population_genetics_closed_from_evidence
    {R : RestrictionModificationSystem} {E : EvolutionaryDynamicsPackage R}
    (P : PopulationGeneticsPackage E) (Ev : PopulationGeneticsEvidence P) :
    PopulationGeneticsClosed P := by
  exact And.intro Ev.alleleFrequencyClosed
    (And.intro Ev.fixationProbabilityClosed
      (And.intro Ev.linkageDisequilibriumClosed Ev.coalescentProcessClosed))

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse