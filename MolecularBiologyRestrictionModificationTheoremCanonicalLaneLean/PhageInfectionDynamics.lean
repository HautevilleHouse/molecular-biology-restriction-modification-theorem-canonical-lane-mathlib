import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean.RestrictionModificationPathway

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure PhageInfectionDynamics (A : AdmissibleClass) (P : RestrictionModificationPathway A) where
  phageConcentration : Float
  bacterialConcentration : Float
  infectionRate : Float
  protectionEfficiency : Float
  equilibriumCondition : infectionRate * phageConcentration < protectionEfficiency * bacterialConcentration

def PhageInfectionDynamicsClosed (A : AdmissibleClass) (P : RestrictionModificationPathway A) (I : PhageInfectionDynamics A P) : Prop :=
  I.equilibriumCondition

theorem phage_infection_dynamics_closed_intro
    (A : AdmissibleClass) (P : RestrictionModificationPathway A) (I : PhageInfectionDynamics A P) :
    PhageInfectionDynamicsClosed A P I := by
  exact I.equilibriumCondition

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse