import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure RegulatoryNetworkPackage {R : RestrictionModificationSystem}
    {E : EvolutionaryDynamicsPackage R} {P : PopulationGeneticsPackage E} where
  geneExpressionProgram : Prop
  regulatoryMotifs : Prop
  signalTransduction : Prop
  feedbackLoops : Prop

structure RegulatoryNetworkEvidence {R : RestrictionModificationSystem}
    {E : EvolutionaryDynamicsPackage R} {P : PopulationGeneticsPackage E}
    (N : RegulatoryNetworkPackage E P) where
  geneExpressionProgramClosed : N.geneExpressionProgram
  regulatoryMotifsClosed : N.regulatoryMotifs
  signalTransductionClosed : N.signalTransduction
  feedbackLoopsClosed : N.feedbackLoops

def RegulatoryNetworkClosed {R : RestrictionModificationSystem}
    {E : EvolutionaryDynamicsPackage R} {P : PopulationGeneticsPackage E}
    (N : RegulatoryNetworkPackage E P) : Prop :=
  N.geneExpressionProgram ∧ N.regulatoryMotifs ∧ N.signalTransduction ∧ N.feedbackLoops

theorem regulatory_network_closed_from_evidence
    {R : RestrictionModificationSystem} {E : EvolutionaryDynamicsPackage R}
    {P : PopulationGeneticsPackage E} (N : RegulatoryNetworkPackage E P)
    (Ev : RegulatoryNetworkEvidence N) : RegulatoryNetworkClosed N := by
  exact And.intro Ev.geneExpressionProgramClosed
    (And.intro Ev.regulatoryMotifsClosed
      (And.intro Ev.signalTransductionClosed Ev.feedbackLoopsClosed))

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse