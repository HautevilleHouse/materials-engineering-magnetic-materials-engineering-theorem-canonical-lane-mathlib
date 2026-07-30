import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean

structure MagneticAdmittedObject where
  spins : Type
  spinOperator : Type
  hamiltonianModel : Prop
  criticalTemperature : Prop
  conclusion : hamiltonianModel ∧ criticalTemperature

structure AdmissibleClass where
  object : MagneticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (MagneticWitnessClosed A.object) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
