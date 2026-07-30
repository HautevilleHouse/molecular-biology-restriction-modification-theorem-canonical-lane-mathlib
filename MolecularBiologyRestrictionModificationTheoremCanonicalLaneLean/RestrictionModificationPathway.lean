import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

structure RestrictionModificationPathway (A : AdmissibleClass) where
  recognitionSequence : String
  methylationState : Bool
  restrictionEnzymeActive : Bool
  modificationMethylaseActive : Bool
  pathwayFlux : Float
  evidence : pathwayFlux > 0.0

def RestrictionModificationPathwayClosed (A : AdmissibleClass) (P : RestrictionModificationPathway A) : Prop :=
  P.restrictionEnzymeActive ∧ P.modificationMethylaseActive ∧ P.evidence

theorem restriction_modification_pathway_closed_intro
    (A : AdmissibleClass) (P : RestrictionModificationPathway A) :
    RestrictionModificationPathwayClosed A P := by
  exact And.intro P.restrictionEnzymeActive (And.intro P.modificationMethylaseActive P.evidence)

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse