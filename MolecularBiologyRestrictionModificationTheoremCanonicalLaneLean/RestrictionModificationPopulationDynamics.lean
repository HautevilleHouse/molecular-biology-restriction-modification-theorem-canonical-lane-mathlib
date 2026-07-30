import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure RestrictionModificationPopulationDynamics where
  bacterialPopulation : Type u
  phagePopulation : Type v
  restrictionEnzymeEfficiency : Prop
  modificationMethylationRate : Prop
  populationEquilibrium : Prop
  coexistenceCondition : Prop
  selectionPressure : Prop

def RestrictionModificationPopulationDynamicsClosed (R : RestrictionModificationPopulationDynamics) : Prop :=
  R.restrictionEnzymeEfficiency ∧ R.modificationMethylationRate ∧ R.populationEquilibrium ∧ R.coexistenceCondition ∧ R.selectionPressure

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse