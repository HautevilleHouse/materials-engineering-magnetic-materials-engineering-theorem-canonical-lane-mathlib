import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean

structure SpinWavePackage where
  exchangeConstant : Prop
  anisotropy : Prop
  dispersionRelation : Prop
  magnonEnergyDefined : Prop

def bridgeClosed (S : SpinWavePackage) : Prop :=
  S.exchangeConstant ∧ S.anisotropy ∧ S.dispersionRelation ∧ S.magnonEnergyDefined

theorem spin_wave_bridge_closed (S : SpinWavePackage) : bridgeClosed S :=
  And.intro S.exchangeConstant (And.intro S.anisotropy (And.intro S.dispersionRelation S.magnonEnergyDefined))

end MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
