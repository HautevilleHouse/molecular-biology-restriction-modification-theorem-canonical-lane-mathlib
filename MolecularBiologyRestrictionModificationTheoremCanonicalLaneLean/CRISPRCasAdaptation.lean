import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure CRISPRCasAdaptation where
  spacerAcquisitionRate : Prop
  targetSpecificity : Prop
  immuneMemoryEstablished : Prop
  adaptationCost : Prop
  defenseEfficacy : Prop

def CRISPRCasAdaptationClosed (C : CRISPRCasAdaptation) : Prop :=
  C.spacerAcquisitionRate ∧ C.targetSpecificity ∧ C.immuneMemoryEstablished ∧ C.adaptationCost ∧ C.defenseEfficacy

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse