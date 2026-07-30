import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean

structure MagneticMaterialObject where
  material : Type
  exchangeConstant : ℝ
  anisotropyConstant : ℝ
  saturationMagnetization : ℝ
  dmiConstant : ℝ
  conclusion : Prop

structure AdmissibleClass where
  object : MagneticMaterialObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MagneticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
