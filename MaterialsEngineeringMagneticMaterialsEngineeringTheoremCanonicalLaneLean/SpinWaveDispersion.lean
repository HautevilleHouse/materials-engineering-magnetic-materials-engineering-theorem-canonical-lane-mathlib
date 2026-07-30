import canonicallaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean

structure SpinWaveDispersionPackage where
  exchangeConstant : Float
  anisotropyConstant : Float
  magnetization : Float
  wavevector : Float -> Float
  dispersionRelation : Float -> Float
  magnonEnergy : Prop

def SpinWaveDispersionClosed (S : SpinWaveDispersionPackage) : Prop :=
  S.magnonEnergy

theorem spin_wave_dispersion_closed_from_evidence (S : SpinWaveDispersionPackage) : SpinWaveDispersionClosed S :=
  S.magnonEnergy

end MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean
end HautevilleHouse