import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure RestrictionModificationSystems where
  restrictionEnzymeType : Type u
  modificationMethyltransferaseType : Type v
  recognitionSequenceSpecificity : Prop
  cleavageEfficiency : Prop
  protectionAgainstPhage : Prop

def RestrictionModificationSystemsClosed (R : RestrictionModificationSystems) : Prop :=
  R.recognitionSequenceSpecificity ∧ R.cleavageEfficiency ∧ R.protectionAgainstPhage

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse