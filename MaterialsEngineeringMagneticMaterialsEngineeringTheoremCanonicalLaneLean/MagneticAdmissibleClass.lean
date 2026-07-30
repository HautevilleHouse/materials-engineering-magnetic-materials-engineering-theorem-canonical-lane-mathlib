import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean

structure MagneticAdmittedObject where
  magnetizationSaturated : Prop
  exchangeStiffness : Prop
  anisotropyEnergy : Prop
  conclusion : magnetizationSaturated ∧ exchangeStiffness ∧ anisotropyEnergy

structure MagneticAdmissibleClass where
  object : MagneticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def MagneticAdmittedClosure (A : MagneticAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean
end HautevilleHouse