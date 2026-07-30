import HautevilleHouse.MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RMClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyRestrictionModificationTheoremCanonicalLaneLean
end HautevilleHouse