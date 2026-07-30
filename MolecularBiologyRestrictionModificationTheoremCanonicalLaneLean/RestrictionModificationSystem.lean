import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure RestrictionModificationSystem where
  host : Type u
  restrictionEnzyme : Type v
  methyltransferase : Type w
  recognitionSequence : String
  cleavageActivity : Prop
  methylationActivity : Prop
  hostProtection : Prop

def RestrictionModificationClosed (S : RestrictionModificationSystem) : Prop :=
  S.cleavageActivity ∧ S.methylationActivity ∧ S.hostProtection

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse
