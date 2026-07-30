import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure EvolutionaryDynamicsPackage {R : RestrictionModificationSystem} where
  populationDynamics : Prop
  selectionPressure : Prop
  fitnessLandscape : Prop
  horizontalGeneTransfer : Prop

structure EvolutionaryDynamicsEvidence {R : RestrictionModificationSystem}
    (E : EvolutionaryDynamicsPackage R) where
  populationDynamicsClosed : E.populationDynamics
  selectionPressureClosed : E.selectionPressure
  fitnessLandscapeClosed : E.fitnessLandscape
  horizontalGeneTransferClosed : E.horizontalGeneTransfer

def EvolutionaryDynamicsClosed {R : RestrictionModificationSystem}
    (E : EvolutionaryDynamicsPackage R) : Prop :=
  E.populationDynamics ∧ E.selectionPressure ∧ E.fitnessLandscape ∧ E.horizontalGeneTransfer

theorem evolutionary_dynamics_closed_from_evidence
    {R : RestrictionModificationSystem} (E : EvolutionaryDynamicsPackage R)
    (Ev : EvolutionaryDynamicsEvidence E) : EvolutionaryDynamicsClosed E := by
  exact And.intro Ev.populationDynamicsClosed
    (And.intro Ev.selectionPressureClosed
      (And.intro Ev.fitnessLandscapeClosed Ev.horizontalGeneTransferClosed))

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse