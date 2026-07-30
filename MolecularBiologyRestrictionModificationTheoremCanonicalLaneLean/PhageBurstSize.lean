import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure PhageBurstSize where
  latentPeriod : Prop
  burstSize : Prop
  adsorptionRate : Prop
  infectionCycle : Prop
  hostLysisTiming : Prop

def PhageBurstSizeClosed (P : PhageBurstSize) : Prop :=
  P.latentPeriod ∧ P.burstSize ∧ P.adsorptionRate ∧ P.infectionCycle ∧ P.hostLysisTiming

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse