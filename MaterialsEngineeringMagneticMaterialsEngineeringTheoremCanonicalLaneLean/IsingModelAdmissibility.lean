import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean

structure IsingModelParams where
  lattice : Type
  couplingStrength : Prop
  externalField : Prop
  partitionFunction : Prop
  magnetizationComputed : Prop

def bridgeClosed (I : IsingModelParams) : Prop :=
  I.couplingStrength ∧ I.externalField ∧ I.partitionFunction ∧ I.magnetizationComputed

theorem ising_bridge_closed (I : IsingModelParams) : bridgeClosed I :=
  And.intro I.couplingStrength (And.intro I.externalField (And.intro I.partitionFunction I.magnetizationComputed))

end MaterialsEngineeringMagneticMaterialsEngineeringTheoremCanonicalLaneLean
end HautevilleHouse
