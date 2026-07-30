import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean.RestrictionModificationSystem

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure PhageInfectionModel where
  phage : Type u
  host : Type v
  adsorptionRate : ℝ
  injectionSuccess : Prop
  restrictionDefense : RestrictionModificationSystem
  escapeMutation : Prop

structure PhageInfectionEvidence (P : PhageInfectionModel) where
  adsorptionRatePositive : P.adsorptionRate > 0
  injectionSuccessClosed : P.injectionSuccess
  restrictionDefenseClosed : RestrictionModificationClosed P.restrictionDefense

def PhageInfectionClosed (P : PhageInfectionModel) : Prop :=
  P.adsorptionRate > 0 ∧ P.injectionSuccess ∧ RestrictionModificationClosed P.restrictionDefense

theorem phage_infection_closed_from_evidence (P : PhageInfectionModel) (E : PhageInfectionEvidence P) :
    PhageInfectionClosed P := by
  exact And.intro E.adsorptionRatePositive (And.intro E.injectionSuccessClosed E.restrictionDefenseClosed)

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse
