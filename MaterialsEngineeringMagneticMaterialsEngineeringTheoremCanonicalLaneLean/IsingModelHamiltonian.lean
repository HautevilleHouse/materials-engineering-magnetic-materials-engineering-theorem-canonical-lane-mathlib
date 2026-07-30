import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean

structure IsingModelPackage where
  lattice : Type u
  spinVariable : Type v
  exchangeInteraction : Prop
  externalField : Prop
  hamiltonianDefined : Prop

structure IsingModelEvidence (I : IsingModelPackage) where
  exchangeInteractionClosed : I.exchangeInteraction
  externalFieldClosed : I.externalField
  hamiltonianDefinedClosed : I.hamiltonianDefined

def IsingModelClosed (I : IsingModelPackage) : Prop :=
  I.exchangeInteraction ∧ I.externalField ∧ I.hamiltonianDefined

theorem ising_model_closed_from_evidence (I : IsingModelPackage) (E : IsingModelEvidence I) : IsingModelClosed I := by
  exact And.intro E.exchangeInteractionClosed (And.intro E.externalFieldClosed E.hamiltonianDefinedClosed)

end MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean
end HautevilleHouse