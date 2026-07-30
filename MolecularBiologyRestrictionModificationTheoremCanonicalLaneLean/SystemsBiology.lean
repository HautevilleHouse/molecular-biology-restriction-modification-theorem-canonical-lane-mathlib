import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure SystemsBiologyPackage {R : RestrictionModificationSystem}
    {E : EvolutionaryDynamicsPackage R} {P : PopulationGeneticsPackage E}
    {N : RegulatoryNetworkPackage E P} where
  pathwayModel : Prop
  metabolicFlux : Prop
  kineticParameters : Prop
  multiscaleIntegration : Prop

structure SystemsBiologyEvidence {R : RestrictionModificationSystem}
    {E : EvolutionaryDynamicsPackage R} {P : PopulationGeneticsPackage E}
    {N : RegulatoryNetworkPackage E P} (S : SystemsBiologyPackage N) where
  pathwayModelClosed : S.pathwayModel
  metabolicFluxClosed : S.metabolicFlux
  kineticParametersClosed : S.kineticParameters
  multiscaleIntegrationClosed : S.multiscaleIntegration

def SystemsBiologyClosed {R : RestrictionModificationSystem}
    {E : EvolutionaryDynamicsPackage R} {P : PopulationGeneticsPackage E}
    {N : RegulatoryNetworkPackage E P} (S : SystemsBiologyPackage N) : Prop :=
  S.pathwayModel ∧ S.metabolicFlux ∧ S.kineticParameters ∧ S.multiscaleIntegration

theorem systems_biology_closed_from_evidence
    {R : RestrictionModificationSystem} {E : EvolutionaryDynamicsPackage R}
    {P : PopulationGeneticsPackage E} {N : RegulatoryNetworkPackage E P}
    (S : SystemsBiologyPackage N) (Ev : SystemsBiologyEvidence S) :
    SystemsBiologyClosed S := by
  exact And.intro Ev.pathwayModelClosed
    (And.intro Ev.metabolicFluxClosed
      (And.intro Ev.kineticParametersClosed Ev.multiscaleIntegrationClosed))

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse