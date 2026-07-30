import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure RestrictionModificationObject where
  host : Type
  phage : Type
  restrictionEnzyme : host → Prop
  modificationEnzyme : host → Prop
  phageSusceptible : phage → Prop
  phageResistant : phage → Prop
  conclusion : ∀ (h : host) (p : phage), restrictionEnzyme h → modificationEnzyme h → (phageSusceptible p → phageResistant p)

def RMClosed (O : RestrictionModificationObject) : Prop :=
  O.conclusion

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse